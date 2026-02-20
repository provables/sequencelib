from enum import Enum
from functools import wraps
import json
from math import ceil
from pathlib import Path
import requests
import synthesize
import time
import timeit
import yaml


class TaskOutcome(Enum):
    SUCCESS = 0
    FAILURE = 1


class AIProverException(Exception):
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return self.msg


class AIProverTask:
    def __init__(self, aiprover, max_tries):
        self.aiprover = aiprover
        self.max_tries = max_tries
        self.state = {}  # arbitrary name-value pairs set by the task

    def process(self, current_try=0, previous_error=None):
        raise NotImplementedError()


class LLM:
    def __init__(self, base_url: str, api_key: str, model: str):
        self.base_url = base_url
        self.api_key = api_key
        self.model = model

    def send_chat_message(
        self, system_message: str, user_message: str, retry: bool = True
    ):
        data = {
            "messages": [
                {"role": "system", "content": system_message},
                {"role": "user", "content": user_message},
            ],
            "stop": ["<|eot_id|>"],
            "model": self.model,
            "stream": False,
            "stream_options": {"include_usage": True},
        }

        headers = {
            "Authorization": f"Bearer {self.api_key}",
            "Content-Type": "application/json",
        }
        url = f"{self.base_url}/chat/completions"
        try:
            rsp = requests.post(url=url, json=data, headers=headers)
            rsp.raise_for_status()
            answer = rsp.json()["choices"][0]["message"]["content"]
            return answer
        except Exception as e:
            print(f"Got exception: {e}")
            # if we hit the too many requests error (i.e., we are getting throttled)
            # then we will try one more time but set retry to False (meaning, this is the
            # last time we will try)
            if "Too Many Requests" in str(e):
                if retry:
                    print(
                        f"Got first Too Many Requests error -- sleeping for 60 seconds.."
                    )
                    time.sleep(60)
                    print(f"Sleep finished, will try calling LLM again")
                    if retry:
                        return self.send_chat_message(
                            system_message, user_message, retry=False
                        )
                else:
                    print(
                        "Got a back-to-back Too Many Requests error; quitting for good."
                    )
            raise e


class OeisData:

    def load_all_oeis_data(self):
        """
        Loads a dictionary of data that was built from a checkout of the oeis-data repository.
        They keys of the returned dictionary are the OEIS sequence tags, e.g., "A000001",
        """
        with open("/home/jstubbs/oeis_results_all.json", "r") as f:
            return json.load(f)

    def load_core_oeis_tags(self):
        with open("core_sequences_tags.json", "r") as f:
            return json.load(f)

    def load_core_sequence_data(self):
        with open("/home/jstubbs/core_sequences_data.json", "r") as f:
            return json.load(f)


class AIProver:
    def __init__(self, config_path: str):
        self.config = self.read_config(config_path)
        self.llm = LLM(
            self.config["LLM"]["base_url"],
            self.config["LLM"]["api_key"],
            self.config["LLM"]["model"],
        )
        self.oeis_lt = synthesize.Context(
            output_dir=self.config["OEIS_LT"]["output_dir"]
        )
        self.oeis_data = OeisData()
        self.metrics = {}
        self.task_final_states = []
        self.aiprover_output_dir = self.config["AI_PROVER"]["output_dir"]
        self.aiprover_state_file = (
            Path(self.aiprover_output_dir) / "aiprover_state.json"
        )
        self.start_time = timeit.default_timer()

    def read_config(self, config_path: str):
        with open(config_path, "r") as file:
            return yaml.safe_load(file)

    def increment_metric(self, key: str):
        if key in self.metrics:
            self.metrics[key] += 1
        else:
            self.metrics[key] = 1

    def process_task(self, task: AIProverTask):
        current_try = 0
        previous_error = None
        self.increment_metric("task_attempt_total")
        while current_try < task.max_tries:
            current_try += 1
            task.state["total_tries"] = current_try
            try:
                result = task.process(
                    current_try=current_try, previous_error=previous_error
                )
                if result == TaskOutcome.SUCCESS:
                    self.increment_metric("task_success_total")
                    self.finalize_task(task)
                    task.state["final_state"] = "SUCCESS"
                    return result
                elif result == TaskOutcome.FAILURE:
                    self.increment_metric("task_failure_total")
                    task.state["final_state"] = (
                        "FAILURE: task returned a TaskOutcome.FAILURE"
                    )
                    self.finalize_task(task)
                    return result
            except Exception as e:
                previous_error = e
                task.state["previous_error"] = f"Exception: {e}"
        # we hit the max try limit without a success or failure, so fail the task
        self.increment_metric("task_failure_total")
        self.finalize_task(task)
        task.state["final_state"] = f"FAILURE: hit try limit ({task.max_tries})"
        return None

    def finalize_task(self, task):
        self.task_final_states.append(task.state)
        self.persist_state()
        self.print_report()

    def persist_state(self):
        with open(self.aiprover_state_file, "w") as f:
            json.dump(self.task_final_states, f)

    def print_report(self):
        current_time = timeit.default_timer()
        total_time = current_time - self.start_time
        print(f"\n=================================")
        print(f"REPORT. Current total runtime: {total_time} (seconds)")
        for k, v in self.metrics.items():
            print(f"{k}: {v}")
        print("====================================\n")


class FormalizeOEISStep(int, Enum):
    GENERATE = 0
    POST_PROCESS = 1
    COMPILE = 2
    EVALUATE = 3
    PROVE = 4


class FormalizeOEISTask(AIProverTask):

    def __init__(
        self,
        aiprover: AIProver,
        max_tries: int,
        tag: str,
        description: str,
        values: list[int],
        full_oeis_entry_text: str = "",
    ):
        super().__init__(aiprover, max_tries)
        self.tag = tag
        self.description = description
        self.values = values
        self.full_oeis_entry_trxt = description
        if full_oeis_entry_text:
            self.full_oeis_entry_trxt = full_oeis_entry_text
        self.state = {"current_step": FormalizeOEISStep.GENERATE, "lean_src": None}

    def _get_system_message(self):
        return "You are an expert at writing code using the Lean 4 theorem prover."

    def _get_initial_formalize_prompt(self, use_full_entry=False):

        prompt = """You are an expert in the Lean 4 interactive theorem prover. 
        Please formalize the definition of the following OEIS sequence in Lean 4. In this context, 
        formalize means provide a Lean function definition from Nat to Nat (of from Nat to Int if the 
        sequence takes signed values). The Lean function definition MUST compile. Also, we prefer 
        to avoid noncomputable Lean definitions if possible. Also, feel free to use objects defined 
        in Mathlib, and, if necessary, you may define auxiliary objects prior to defining the main
        function. 

        Finally, return only the source code for the Lean function so that the response can be entered 
        directly into Lean. Do NOT include any import statements. JUST include the Lean function
        definition.
        
        For example, for the sequence A000142, described as 'Factorial numbers: n! = 1*2*3*4*...*n 
        (order of symmetric group S_n, number of permutations of n letters)', you should return:

        ```
        def Factorial : ℕ → ℕ := Nat.factorial
        ```

        Similarly, for the sequence A000032, described as 'Lucas numbers beginning 
        at 2: L(n) = L(n-1) + L(n-2), L(0) = 2, L(1) = 1.', you should return:
        ```
        def Lucas (n : ℕ) : ℕ :=
        ((fun p : ℕ × ℕ => (p.snd, p.fst + p.snd))^[n] (2, 1)).fst
        ```

        Finally, here is an example where an auxiliary definition is useful. For the sequence 
        A000043, described as 'Mersenne exponents: primes p such that 2^p - 1 is prime. 
        Then 2^p - 1 is called a Mersenne prime.'
        We first define `IsMersenneExponent` as a Prop before giving the definition of 
        the `MersenneExponents` function. Note that it is defined as `noncomputable`, which 
        is sub-optimal. Here is the code:

        ```
        def IsMersenneExponent (p : ℕ) : Prop := Nat.Prime p ∧ Nat.Prime (2 ^ p - 1)
        noncomputable def MersenneExponents (n : ℕ) : ℕ := nth IsMersenneExponent (n - 1)
        ```

        Here is the entire OEIS entry for the sequence to formalize: """

        # By default, we're passing just the short descritpion from the entire OEIS entry,
        # but if `use_full_entry` is True, we will pass the entire text.
        text = self.description
        if use_full_entry:
            text = self.full_oeis_entry_trxt

        prompt = prompt + text
        return prompt

    def _get_repair_prompt(self, error, use_full_entry=False):
        """
        Returns a prompt that can be used to ask for a Lean function to be
        repaired given that a previous source failed to compile or had other errors.
        """
        # By default, we're passing just the short descritpion from the entire OEIS entry,
        # but if `use_full_entry` is True, we will pass the entire text.
        text = self.description
        if use_full_entry:
            text = self.full_oeis_entry_trxt

        prompt = f"""Thank you but the Lean source code you generated contains an error.
        Here is the code you generated: {self.state["lean_src"]}
        and here is the error reported by Lean: {error}
        And the original sequence description: {text}.
        Please fix the error and return a Lean function that compiles. Make
        the Lean function computable if possible. Finally, return only the source code for 
        the Lean function so that the response can be entered directly into Lean.
        Do NOT include any import statements. JUST include the Lean function
        definition.
        """
        return prompt

    def generate_lean_definition(self, current_try=0, previous_error=None):
        if current_try == 0:
            user_msg = self._get_initial_formalize_prompt()
        else:
            user_msg = self._get_repair_prompt(error=previous_error)
        lean_src = self.aiprover.llm.send_chat_message(
            system_message=self._get_system_message(), user_message=user_msg
        )
        self.state["lean_src"] = lean_src
        self.state["current_step"] = FormalizeOEISStep.POST_PROCESS

    def post_process_lean_source(self):
        # first, strip out lean fragment
        lean_src = self.state["lean_src"]
        if lean_src.startswith("```lean"):
            lean_src = lean_src.strip("```lean")

        # remove any backtics at all
        lean_src = lean_src.strip("`")

        # make the lean function name be the `tag` of the OEIS sequence
        func_name = lean_src.split(" ")[1]
        lean_src = lean_src.replace(func_name, self.tag)

        self.state["current_step"] = FormalizeOEISStep.COMPILE
        self.state["lean_src"] = lean_src

    def compile_lean_source(self):
        lean_src = self.state["lean_src"]
        # OEIS-LT cannot handle imports, so just bail if the lean source contains one
        if "import" in lean_src:  # type: ignore
            self.state["current_step"] = FormalizeOEISStep.GENERATE
            raise AIProverException(
                msg="The code contained an import --- do not include any imports!"
            )
        else:
            compiled, error_msg = self.aiprover.oeis_lt.try_compile_lean(
                lean_src=lean_src
            )
        if compiled:
            self.state["current_step"] = FormalizeOEISStep.EVALUATE
        else:
            self.state["current_step"] = FormalizeOEISStep.GENERATE
            raise AIProverException(msg=error_msg)

    def check_oeis_values(self):
        lean_src = self.state["lean_src"]
        rsp = self.aiprover.oeis_lt.check_values_for_src(
            tag=self.tag, lean_src=lean_src
        )
        status = None
        if rsp == synthesize.SeqStatus.WRONG:
            self.aiprover.increment_metric("values_wrong")
            # If the values were wrong, we need to go back to the beginning and ask the
            # LLM to regenerate the function.
            # self.state["current_step"] = FormalizeOEISStep.GENERATE
            # raise AIProver(msg="..")
            # However, at this time, we don't have a prompt for handling the wrong values,
            # for now we will just fail the task (and similarly with other error conditions)
            return TaskOutcome.FAILURE
        elif rsp == synthesize.SeqStatus.WRONG_TIMEOUT:
            self.aiprover.increment_metric("values_timeout")
            return TaskOutcome.FAILURE
        elif rsp == synthesize.SeqStatus.CRASHED_CHECKING:
            self.aiprover.increment_metric("values_crashed")
            return TaskOutcome.FAILURE
        elif rsp == synthesize.SeqStatus.OK:
            self.state["current_step"] = FormalizeOEISStep.PROVE

    def prove_value_theorems(self):
        lean_src = self.state["lean_src"]
        values = list(self.aiprover.oeis_lt.values_to_prove(self.tag))
        total = len(values)
        for i, limit in enumerate([total, total / 2, total / 4]):
            to_prove = (up_to, _), *_ = values[-ceil(limit) :]
            print(f"Iteration #{i}. Trying to prove up to {up_to}... ", end="")
            status = self.aiprover.oeis_lt.prove_values(
                tag=self.tag, lean_src=lean_src, values=to_prove
            )
            if status == synthesize.SeqStatus.OK:
                if i == 0:
                    self.aiprover.increment_metric("max_proved")
                else:
                    self.aiprover.increment_metric("some_proved")
                self.aiprover.oeis_lt.save_file(
                    self.tag,
                    synthesize.SeqStatus.OK,
                    max_index=up_to,
                    proved_max=i == 0,
                    lean_src=lean_src,
                )
                self.aiprover.increment_metric("files_written")
                return TaskOutcome.SUCCESS
        else:
            print("Giving up in generating theorems")
            self.aiprover.increment_metric("none_proved")
            self.aiprover.oeis_lt.save_file(
                seqid=self.tag, status=synthesize.SeqStatus.NO_VALUES, lean_src=lean_src
            )
            self.aiprover.increment_metric("files_written")
            return TaskOutcome.SUCCESS

    def process(self, current_try=0, previous_error=None):
        if self.state["current_step"] == FormalizeOEISStep.GENERATE:
            outcome = self.generate_lean_definition(current_try, previous_error)
            if outcome:
                return outcome
        if self.state["current_step"] == FormalizeOEISStep.POST_PROCESS:
            outcome = self.post_process_lean_source()
            if outcome:
                return outcome
        if self.state["current_step"] == FormalizeOEISStep.COMPILE:
            outcome = self.compile_lean_source()
            if outcome:
                return outcome
        if self.state["current_step"] == FormalizeOEISStep.EVALUATE:
            outcome = self.check_oeis_values()
            if outcome:
                return outcome
        if self.state["current_step"] == FormalizeOEISStep.PROVE:
            return self.prove_value_theorems()
