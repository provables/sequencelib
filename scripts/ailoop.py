# Module to build a database of information on the OEIS Core sequences.
#
# NOTE: This full program requires the Sequencelib's `interactive` environment,
#       which provides the `synthesize` package and starts up the OEIS-LT server
#

import json
import os
from pathlib import Path
import requests
import time
from enum import Enum
from math import ceil

from synthesize import SeqStatus
from jinja2 import Environment, BaseLoader, FileSystemLoader

HERE = Path(__file__).resolve().parent


# import llms

# For using OpenAI
# LLM_BASE_URL = "https://api.openai.com/v1"
# LLM_API_KEY = ""
# MODEL = "gpt-5.2"

# For using Tejas
LLM_BASE_URL = "https://ai.tejas.tacc.utexas.edu/v1"
LLM_API_KEY = ""
MODEL = "Llama-4-Maverick-17B-128E-Instruct"


# class SeqStatus(Enum):
#     OK = 0
#     WRONG = 1  # did not agree with OEIS
#     WRONG_TIMEOUT = 2  # time out trying to check values
#     FAILED = 3  # compilation or proving values failed
#     NO_VALUES = 4  # compilation succeeded but no theorems were generated
#     PROVE_TIMEOUT = 5  # proving values timed out
#     CRASHED_PROVING = 6  # Genseq crashed trying prove theorems
#     CRASHED_CHECKING = 7  # Genseq crashed trying to check the values


class SynthesizeError(Exception):
    pass


class BuildException(Exception):
    pass


class AutoDerivationException(BuildException):
    pass


class GenseqCrashedException(Exception):
    pass


def load_all_oeis_data():
    """
    Loads a dictionary of data that was built from a checkout of the oeis-data repository.
    They keys of the returned dictionary are the OEIS sequence tags, e.g., "A000001",
    """
    with open("/home/jstubbs/oeis_results_all.json", "r") as f:
        return json.load(f)


def load_core_oeis_tags():
    with open("core_sequences_tags.json", "r") as f:
        return json.load(f)


def load_core_sequence_data():
    with open("/home/jstubbs/core_sequences_data.json", "r") as f:
        return json.load(f)


def load_compiled_core_seq_data():
    with open(
        "/home/jstubbs/gits/lean4/sequencelib/scripts/compiled_core_seqs.json", "r"
    ) as f:
        return json.load(f)


def load_eval_correct():
    with open(
        "/home/jstubbs/gits/lean4/sequencelib/scripts/eval_correct_core_seqs.json", "r"
    ) as f:
        return json.load(f)


CORE_SEQS = load_core_sequence_data()


def get_local_path_to_seq(tag):
    """
    Returns the absolute path, as a string, to the .seq file associated with the
    sequence with tag, `tag`.
    """
    base_path = "/home/jstubbs/gits/lean4/oeisdata/seq/"  # TODO -- update with yours
    seq_cluster_dir = tag[:4]
    return os.path.join(base_path, seq_cluster_dir, f"{tag}.seq")


def in_synthetic(tag):
    """
    Checks whether a given `tag` has an entry in the Synthetic directory of a local
    sequencelib checkout.
    """
    seq_cluster_dir = tag[:4]
    base_slib_path = "/home/jstubbs/gits/lean4/sequencelib/Sequencelib/Synthetic"
    path = os.path.join(base_slib_path, seq_cluster_dir, f"{tag}.lean")
    if os.path.exists(path):
        return path
    return None


def count_in_synthetic():
    core_seqs = load_core_sequence_data()
    in_synth = 0
    for tag in core_seqs.keys():
        if core_seqs[tag]["in_synthetic"]:
            in_synth += 1
    return in_synth


def count_in_python():
    core_seqs = load_core_sequence_data()
    in_python = 0
    for tag in core_seqs.keys():
        if "python_src" in core_seqs[tag].keys():
            in_python += 1
    return in_python


TEMPLATE_PATH = os.environ.get("TEMPLATE_PATH", HERE)
OUTPUT_DIR = os.environ.get("OUTPUT_DIR", "/tmp")


def write_file(declaration, tag, authors, offset, max_index=None):
    """Create Lean file from declaration."""

    env = Environment(loader=FileSystemLoader(TEMPLATE_PATH))
    template = env.get_template("seq.j2")
    out = Path(OUTPUT_DIR) / f"{tag}.lean"
    out.write_text(
        template.render(
            sequence_name=tag,
            authors=authors,
            source=declaration,
            offset=offset,
            max_index=max_index,
        )
    )


def get_core_seq(tag, core_seqs=None):
    """
    Returns a dictionary of data for the core OEIS sequence with tag, `tag`.
    `core_seqs` is the entire OEIS core sequence data, as returned by the load_core_sequence_data
    function. If not passed, this function will load the data. When iterating through all the core
    sequences, pass the core_seqs object to save I/O.
    """
    if not core_seqs:
        core_seqs = CORE_SEQS
    return core_seqs[tag]


def get_initial_formalize_prompt(tag, use_full_entry=False):

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

    seq = get_core_seq(tag)

    # By default, we're passing just the short descritpion from the entire OEIS entry,
    # but if `use_full_entry` is True, we will pass the entire text.
    text = seq["desc"]
    if use_full_entry:
        text = seq["full_oeis_entry_text"]

    prompt = prompt + text
    return prompt


def get_repair_prompt(tag, lean_src, error_msg, use_full_entry=False):
    """
    Returns a prompt that can be used to ask for a Lean function to be
    repaired given that a previous source failed to compile or had other errors.
    """

    seq = get_core_seq(tag)

    # By default, we're passing just the short descritpion from the entire OEIS entry,
    # but if `use_full_entry` is True, we will pass the entire text.
    text = seq["desc"]
    if use_full_entry:
        text = seq["full_oeis_entry_text"]

    prompt = f"""Thank you but the Lean source code you generated contains an error.
    Here is the code you generated: {lean_src}
    and here is the error reported by Lean: {error_msg}
    And the original sequence description: {text}.
    Please fix the error and return a Lean function that compiles. Make
    the Lean function computable if possible. Finally, return only the source code for 
    the Lean function so that the response can be entered directly into Lean.
    Do NOT include any import statements. JUST include the Lean function
    definition.
    """
    return prompt


def _send_chat_message_v0(base_url, api_key, model, system_message, user_message):
    """
    Docstring for send_chat_message_v0

    :param client: Description
    :param model: Description
    :param system_message: Description
    :param user_message: Description
    """
    data = {
        "messages": [
            {"role": "system", "content": system_message},
            {"role": "user", "content": user_message},
        ],
        "stop": ["<|eot_id|>"],
        "model": model,
        "stream": False,
        "stream_options": {"include_usage": True},
    }

    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
    }
    url = f"{base_url}/chat/completions"
    try:
        rsp = requests.post(url=url, json=data, headers=headers)
        rsp.raise_for_status()
        answer = rsp.json()["choices"][0]["message"]["content"]
        return answer
    except Exception as e:
        print(f"Got exception: {e}")
        raise e


def call_tejas(system_message, user_message):
    """
    Convenience wrapper around llms.send_chat_message_v0
    """
    answer = _send_chat_message_v0(
        base_url=LLM_BASE_URL,
        model=MODEL,
        api_key=LLM_API_KEY,
        system_message=system_message,
        user_message=user_message,
    )
    return answer


def sanitize_lean(lean_src):
    """
    Remove code fragments and characters from the LLM-generated source code that
    OEIS-LT doesn't like.
    """
    # first, strip out lean fragment
    if lean_src.startswith("```lean"):
        lean_src = lean_src.strip("```lean")
    # remove any backtics at all
    lean_src = lean_src.strip("`")
    return lean_src


def try_compile_lean(c, lean_src):
    """
    Try to compile some Lean source code by making a call to the OEIS-LT server.
    `c` should be a synthesize.Context() object.
    `lean_src` should be a string with the source code.
    """

    body = {"cmd": "compile", "args": {"src": lean_src}}
    try:
        rsp = c.req(body)
        return True, None
    except Exception as e:
        return False, str(e)


def write_success_file(correct_sequences):
    with open("compiled_core_seqs.json", "w") as f:
        json.dump(correct_sequences, f)


def check_one_value(c, tag, lean_src, idx, value):
    return c.req(
        {
            "cmd": "eval",
            "args": {"src": lean_src, "values": [[idx, value]], "tag": tag},
        }
    )["eval"]


def check_values(c, tag, lean_src):
    """
    Use OEIS-LT to check whether `lean_src` for sequence `tag` agrees with the known values.
    """

    values = list(c.values_for_sequence(tag))
    for idx, value in values:
        try:
            if not check_one_value(c, tag, lean_src, idx, value):
                return SeqStatus.WRONG
        except TimeoutError:
            return SeqStatus.WRONG_TIMEOUT
        except GenseqCrashedException:
            return SeqStatus.CRASHED_CHECKING
        except SynthesizeError:
            return SeqStatus.WRONG
        except Exception as e:
            return SeqStatus.WRONG
    return SeqStatus.OK


def prove_values(c, tag, lean_src, values):
    """
    Use OEIS-LT to try and prove theorems about values related to `lean_src`.
    The values should be passed


    :param c: Description
    :param tag: Description
    :param lean_src: Description
    :param values: Description
    """
    try:
        if c.req(
            {
                "cmd": "prove_batch",
                "args": {"name": tag, "src": lean_src, "values": values},
            }
        )["proved"]:
            return SeqStatus.OK
        else:
            return SeqStatus.FAILED
    except TimeoutError:
        return SeqStatus.PROVE_TIMEOUT
    except GenseqCrashedException:
        return SeqStatus.CRASHED_PROVING
    except SynthesizeError:
        return SeqStatus.FAILED


def formalization_loop():
    """
    Primary loop to try and formalize as many core OEIS sequences using an LLM.

    """

    import synthesize

    # Max number of attempts per oeis sequence
    MAX_TRIES = 20

    # sequences that we know are too hard for the LLM
    sequences_to_skip = ["A000001"]

    # sequences that the AI loop was able to generate code that compiled correctly
    correct_sequences = []
    with open("compiled_core_seqs.json", "r") as f:
        correct_sequences = json.load(f)
    correct_tags = [c["tag"] for c in correct_sequences]

    c = synthesize.Context()
    core_seqs = load_core_sequence_data()

    system_message = (
        "You are an expert at writing code using the Lean 4 theorem prover."
    )

    # counters ---
    current_sequence_nbr = 0
    total_llm_calls = 0
    prev_too_many_requests_call_total = (
        0  # nbr of LLM calls when previously hitting the Too Many Requests error
    )
    # used to make sure we are not hitting the error back-to-back.
    start_sequence_index = 1  # This is the first index that will be processed; set to 1 to start from beginning

    for tag in core_seqs.keys():
        current_sequence_nbr += 1
        if current_sequence_nbr < start_sequence_index:
            continue
        if tag in sequences_to_skip:
            print(f"Skipping sequence {tag} as it was in the skip list...")
            continue
        if tag in correct_tags:
            print(
                f"Skipping sequence {tag} since it was already solved by the LLM previously..."
            )
            continue
        print(
            f"~~~~~~~~~~~~~~~~~~~~\nStarting work on sequence: {tag}; This is sequence {current_sequence_nbr} out of {len(core_seqs.keys())};\nTotal Tejas calls so far:{total_llm_calls}\n~~~~~~~~~~~~~~~~~~~~"
        )
        done = False
        tries = 1
        lean_src = ""
        error_msg = None

        while not done:
            if tries == 1:
                user_message = get_initial_formalize_prompt(tag=tag)
            else:
                user_message = get_repair_prompt(
                    tag=tag, lean_src=lean_src, error_msg=error_msg
                )
            try:
                total_llm_calls += 1
                lean_src = call_tejas(
                    system_message=system_message, user_message=user_message
                )
            except Exception as e:
                print(f"Got exception calling Tejas; e: {e}")
                tries += 1

                # if we hit the Tejas quota we should bail out:
                if "Too Many Requests" in str(e):
                    # if we are getting back-to-back errors, we need to just quit for good.
                    if total_llm_calls - prev_too_many_requests_call_total < 2:
                        print(
                            f"Hit our request limit\nTotal Tejas calls:{total_llm_calls}\nQuitting for good"
                        )
                        return correct_sequences
                    # otherwise, let's try to sleep for 2 minutes and then pick back up:
                    print(
                        f"First recent hit of TOo Many error (previous hit was at {prev_too_many_requests_call_total})"
                    )
                    print("Sleeping for 2 minutes now, and will then continue..")
                    time.sleep(120)
                    print("Finished 2 min sleep, trying now to continue...")
                    prev_too_many_requests_call_total = total_llm_calls
                time.sleep(2)
                if tries > MAX_TRIES:
                    print(f"Hit max tries for this sequence, moving to next sequence!")
                    done = True
                continue

            lean_src = sanitize_lean(lean_src)
            print(f"Try: {tries}\nSanitized Lean:\n{lean_src}")

            # OEIS-LT cannot handle imports, so just bail if the lean source contains one
            if "import" in lean_src:  # type: ignore
                compiled = False
                error_msg = (
                    "The code contained an import --- do not include any imports!"
                )
            else:
                compiled, error_msg = try_compile_lean(c=c, lean_src=lean_src)
            if compiled:
                print(f"Code successfully compiled for sequence: {tag}")
                print(f"Code: {lean_src}")
                correct_sequences.append(
                    {
                        "tag": tag,
                        "lean_src": lean_src,
                    }
                )
                write_success_file(correct_sequences)
                done = True
            else:
                print(f"Compile failed! Error was: {error_msg}")

            tries += 1
            # sleep 2 seconds between each call to try and prevent getting throttled.
            time.sleep(2)
            if tries > MAX_TRIES:
                print(f"Hit max tries for this sequence, moving to next sequence!")
                done = True

    return correct_sequences


def write_success_eval_file(correct_sequences):
    with open("eval_correct_core_seqs.json", "w") as f:
        json.dump(correct_sequences, f)


def evaluation_loop():
    """
    Loop to evaluate all LLM-generated lean functions that compiled.
    """
    import synthesize

    print("Loading context and data...")
    c = synthesize.Context()
    compiled_core = load_compiled_core_seq_data()

    # all sequences that evaluate correctly
    eval_correct = load_eval_correct()

    # counters
    total_seqs = 0
    correct_seqs = 0
    wrong = 0
    timeout = 0
    crashed = 0
    start_index = 91

    print("Data loaded, now starting loop")
    for s in compiled_core:
        total_seqs += 1
        print(f"\nTop of loop for sequence {total_seqs}")
        if total_seqs < start_index:
            print(f"Skipping sequence as it was below the start index ({start_index})")
            continue
        lean_src = s["lean_src"]
        tag = s["tag"]
        print(
            f"Calling check values for sequence {tag} ({total_seqs}/{len(compiled_core)})"
        )
        rsp = check_values(c=c, tag=tag, lean_src=lean_src)
        status = None
        if rsp == SeqStatus.WRONG:
            wrong += 1
            status = "WRONG"
        elif rsp == SeqStatus.WRONG_TIMEOUT:
            timeout += 1
            status = "TIMEOUT"
        elif rsp == SeqStatus.CRASHED_CHECKING:
            crashed += 1
            status = "CRASHED"
        elif rsp == SeqStatus.OK:
            correct_seqs += 1
            eval_correct.append(s)
            write_success_eval_file(eval_correct)
            status = "OK"
        else:
            print(f"Unexpected status for sequence: {tag}; STATUS: {rsp}")
        print(
            f"Just evaluated sequence {tag}\nStatus: {status}\nCounters:\n  Total: {total_seqs}\n  Correct: {correct_seqs}"
        )


def replace_func_name(tag, lean_src):
    """
    Looks in the string `lean_src` for the function name given by the LLM-generated code and replaces it
    with the tag. This is requires because the OEIS-LT prove_batch command requires the declaration name
    to be the same as the tag name.
    """
    func_name = lean_src.split(" ")[1]
    return lean_src.replace(func_name, tag)


def proof_loop():
    """
    Loop to try and prove theorems about functions that successfully evaluated to the OEIS values
    and write Lean files for each.
    """
    # all sequences that evaluate correctly
    eval_correct = load_eval_correct()

    import synthesize

    c = synthesize.Context()
    idx = 0

    for s in eval_correct:
        idx += 1
        tag = s["tag"]
        lean_src = s["lean_src"]
        print(f"Top of loop for sequence {tag} ({idx}/{len(eval_correct)})")
        # make sure the function name is the same as the tag
        lean_src = replace_func_name(tag, lean_src)
        values = list(c.values_to_prove(tag))
        total = len(values)

        for i, limit in enumerate([total, total / 2, total / 4]):
            # TODO: convert to a function
            to_prove = (up_to, _), *_ = values[-ceil(limit) :]
            print(f"Iteration #{i}. Trying to prove up to {up_to}... ", end="")
            status = prove_values(c=c, tag=tag, lean_src=lean_src, values=to_prove)
            if status == SeqStatus.OK:
                print("success")
                c.save_file(
                    tag,
                    SeqStatus.OK,
                    max_index=up_to,
                    proved_max=i == 0,
                    lean_src=lean_src,
                )
                c.stats["total_processed"] += 1
                break
            print("failed")
            c.save_file(tag, status)
        else:
            print("Giving up in generating theorems")
            c.save_file(seqid=tag, status=SeqStatus.NO_VALUES, lean_src=lean_src)
            c.stats["total_processed"] += 1
