"""
Script to synthesize .lean files from source code
definitions using the templating system.

Use the start (-s) and end (-e) flags to control the number of sequences to generate.
Set the procs (-p) flag when running in parallel to the number of processes being started. (Default is 1). When set,
the synthesize script will work on the j^th interval of [s, e] (of size (e-s)/p) where j is determined by its process name.
It assumes its process name is of the form "synthesize_j", as is the case when started by supervisord.

Example invocation:
python -u synthesize.py -s 0 -e 50 > out-8-9-25.log
"""

import argparse
import json
import os
from pathlib import Path
import socket
import sys
import time
import timeit
from itertools import batched, count, chain
from functools import cache
from collections import OrderedDict
import subprocess

from jinja2 import Environment, BaseLoader, FileSystemLoader


HERE = Path(__file__).resolve().parent

ALL_OEIS_RESULTS_FILE = os.environ.get(
    "ALL_OEIS_RESULTS_FILE", os.path.expanduser("~/oeis_results_all.json")
)

SOLUTIONS_FILE_PATH = os.environ.get(
    "SOLUTIONS_FILE_PATH",
    os.path.expanduser("~/gits/lean4/oeis-synthesis/src/results/solutions"),
)

# string to use for the Authors line in the generated .lean files
AUTHORS = "Walter Moreira and Joe Stubbs"

# Directory to save generated Lean files to.
OUTPUT_DIR = os.environ.get("OUTPUT_DIR", "/tmp")

# Configurations for the genseq server
GENSEQ_SERVER = os.environ.get("GENSEQ_SERVER", "127.0.0.1")
GENSEQ_PORT = int(os.environ.get("GENSEQ_PORT", 8000))
GENSEQ_TIMEOUT = 60
GENSEQ_MAX_BUF_SIZE = int(os.environ.get("GENSEQ_MAX_BUF_SIZE", 1048576))

TEMPLATE_PATH = os.environ.get("TEMPLATE_PATH", HERE)
SEQDEF = Environment(loader=BaseLoader).from_string(  # type: ignore
    """{% if max_index -%}
@[OEIS := {{ tag }}, offset := {{ offset }}, derive := true, maxIndex := {{ max_index }}]
{%- else -%}
@[OEIS := {{ tag }}, offset := {{ offset }}]
{%- endif %}
{{ source }}
"""
)


class SynthesizeError(Exception):
    pass


class BuildException(Exception):
    pass


class AutoDerivationException(BuildException):
    pass


class GenseqCrashedException(Exception):
    pass


class Context:
    def __init__(self, port=GENSEQ_PORT, timeout=GENSEQ_TIMEOUT):
        self.port = port
        self.timeout = timeout
        self.socket_file = self.get_socket_file()
        self.solutions_file = self.get_solutions()
        self.oeis_data = get_all_seq_data()

    def seq(self, seqid):
        try:
            return self.oeis_data[seqid]
        except KeyError:
            raise SynthesizeError(f"sequence {seqid} not found in OEIS data")

    def offset(self, seqid):
        return int(self.seq(seqid).get("offset", 0))

    def values(self, seqid):
        return self.seq(seqid).get("values", [])

    def b_values(self, seqid):
        return self.seq(seqid).get("b-file-distrib", [])

    def get_socket_file(self):
        socket = get_genseq_socket(self.port, self.timeout)
        return socket.makefile("rw")

    def kill_genseq(self):
        subprocess.run(["supervisorctl", "restart", "genseq"], capture_output=True)

    def restart(self):
        self.kill_genseq()
        self.socket_file = self.get_socket_file()

    def req(self, obj):
        self.socket_file.write(f"{json.dumps(obj)}\n")
        self.socket_file.flush()
        try:
            response = self.socket_file.readline()
        except TimeoutError:
            print(f"Genseq time-out {obj}")
            self.restart()
            raise
        if not response:
            raise ValueError("server returned empty string (might have crashed)")
        data = json.loads(response)
        if not data["status"]:
            raise SynthesizeError(data["error"])
        return data["result"]

    def _get_solutions(self):
        solutions = open(SOLUTIONS_FILE_PATH, "r")
        for idx, (values_line, code_line) in enumerate(batched(solutions, n=2)):
            seqid, values = values_line.strip().split(":")
            values = values.split()
            seqid = f"A{int(seqid[1:]):06d}"
            yield idx, seqid, values, code_line.strip()

    def get_solutions(self):
        return OrderedDict(
            (seqid, {"index": idx, "dsl_code": code, "values": values})
            for (idx, seqid, values, code) in self._get_solutions()
        )

    def values_for_sequence(self, seqid):
        """Find the fill set of (index, values) that we want to process for this sequence.

        Raise ValueError exception if the sequence is not in the OEIS data.
        """
        offset = self.offset(seqid)
        values = zip(count(offset), self.values(seqid))
        b_file_values = (tuple(x) for x in self.b_values(seqid))
        return sorted(set(chain(values, b_file_values)))

    @cache
    def lean_code(self, seqid):
        dsl_code = self.solutions_file[seqid]["dsl_code"]
        offset = self.offset(seqid)
        return self.req(
            {
                "cmd": "gen",
                "args": {"name": seqid, "offset": offset, "source": dsl_code},
            }
        )["lean"]

    def check_values(self, seqid, values):
        lean_code = self.lean_code(seqid)
        return self.req(
            {"cmd": "eval", "args": {"src": lean_code, "values": values, "tag": seqid}}
        )["eval"]

    def check_full_values(self, seqid):
        values = list(self.values_for_sequence(seqid))
        return self.check_values(seqid, values)

    def prove(self, seqid, values):
        lean_code = self.lean_code(seqid)
        return self.req(
            {
                "cmd": "prove_batch",
                "args": {"name": seqid, "src": lean_code, "values": values},
            }
        )["proved"]

    def process(self, start=0, end=10):
        pass


def get_all_seq_data():
    print("Loading OEIS results JSON File.")
    with open(ALL_OEIS_RESULTS_FILE, "r") as f:
        return json.load(f)


def generate_lean_code(tag, lean_source, offset, max_index):
    return SEQDEF.render(
        tag=tag, source=lean_source, offset=offset, max_index=max_index
    )


def compile_lean(socket, declaration):
    """
    Attemps to compile a single lean source file at `path`.
    Raises an exception if the build fails.

    """
    msg = {
        "cmd": "compile",
        "args": {"src": declaration},
    }
    # let errors propagate to calling function
    reply = genseq_send_recv(socket, msg)
    if not reply["status"]:
        raise BuildException(reply["error"])
    if not "result" in reply:
        raise Exception(
            f"Unexpected reply from genseq gen; did not get result. Full reply: {reply}"
        )
    # if status is True, the compilation succeeded
    return


def process_failed_lean_file(tag, declaration):
    """
    Do something with the .lean files that fail to compile.
    """
    out = Path(OUTPUT_DIR) / f"{tag}.lean"
    out.write_text(declaration)


def get_genseq_socket(port, timeout):
    """
    Returns a client socket bound to the genseq server that is ready for
    sending messages.
    """
    # create an IPv4 socket and bind to the GENSEQ coordinates
    while True:
        try:
            genseq = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            genseq.connect((GENSEQ_SERVER, port))
            genseq.settimeout(timeout)
            # send a ready check message to the server
            reply = genseq_send_recv(genseq, {"cmd": "ready"})
            break
        except ConnectionRefusedError:
            print("trying to reconnect...")
            time.sleep(1) 

    status = reply["status"]
    if not status:
        msg = f"Genseq server not ready; status was: {status}"
        print(msg)
        raise Exception(msg)
    # server is ready
    print(f"Connected to genseq server socket.")
    return genseq


def genseq_send_recv(socket, message):
    """
    Send a message to the genseq socket and get a reply.
    Assumes `socket` is a ready genseq socket (i.e., from get_genseq_socket)
    and `message` is a JSON-serializable
    """
    # print(f"send_recv for message: {message}")
    try:
        # encode and send
        m = json.dumps(message) + "\n"
        # print(f"Sending JSON: {m}")
        socket.sendall(m.encode("utf-8"))
    except Exception as e:
        print(f"Error sending to genseq socket: {e}")
        raise e
    try:
        # get reply and decode
        raw = socket.recv(GENSEQ_MAX_BUF_SIZE)
        if not raw:
            # if we got no bytes, it is likely the genseq server crashed and will have to be restarted;
            # test ready in a loop and then move on
            raise GenseqCrashedException()

    except Exception as e:
        print(f"Error receiving from genseq socket: {e}")
        raise e
    try:
        return json.loads(raw.decode("utf-8"))
    except Exception as e:
        print(f"Got error loading JSON from bytes; e:{e}; raw: {raw}")
        raise e


def call_genseq_for_lean_source(socket, seq_id, offset, code):
    """
    Execute a call to the genseq server with DSL code, indexes and known values
    of the function. The indexes and values should either be the distribution of
    values from the b-file, or, if a b-file does not exist, a set of values from
    the original OEIS entry.
    """
    msg = {
        "cmd": "gen",
        "args": {
            "name": seq_id,
            "offset": offset,
            "source": str(code),
        },
    }
    # let errors propagate to calling function
    reply = genseq_send_recv(socket, msg)
    if not reply["status"]:
        raise Exception(f"Bad status from genseq; full reply: {reply}")
    if not "result" in reply:
        raise Exception(
            f"Unexpected reply from genseq gen; did not get result. Full reply: {reply}"
        )
    result = reply["result"]
    if not "lean" in result:
        raise Exception(
            f"Unexpected reply from genseq gen; did not get lean in result. Full result: {result}"
        )
    return result["lean"]


def call_genseq_for_lean_eval(socket, seq_id, lean_source, indexes, values):
    """
    Use the genseq server to evaluate the lean_source function on a set of indexes.
    """
    pairs = [[indexes[i], values[i]] for i in range(len(values))]
    msg = {
        "cmd": "eval",
        "args": {
            "tag": seq_id,
            "src": lean_source,
            "values": pairs,
        },
    }
    # let errors propagate to calling function
    reply = genseq_send_recv(socket, msg)
    if not reply["status"]:
        raise Exception(f"Bad status from genseq eval; full reply: {reply}")
    if not "result" in reply:
        raise Exception(
            f"Unexpected reply from genseq eval; did not get result. Full reply: {reply}"
        )
    result = reply["result"]
    if not "eval" in result:
        raise Exception(
            f"Unexpected reply from genseq eval; did not get eval in result. Full result: {result}"
        )

    return result["eval"]


def save_file(declaration, tag, authors):
    """Create Lean file from declaration."""

    env = Environment(loader=FileSystemLoader(TEMPLATE_PATH))
    template = env.get_template("seq.j2")
    out = Path(OUTPUT_DIR) / f"{tag}.lean"
    out.write_text(
        template.render(sequence_name=tag, authors=authors, source=declaration)
    )


def process_sequence(socket, seq_id, offset, code, indexes, values, lean_source=None):
    """
    Process a single sequence from the solutions file.
    Returns a pair: Boolean, Option(Int)
      * (Bool) -- whether the maximum number of values was proved
      * (Option (Str)) -- Returns a None of the values computed by the Lean function do not agree with the values
      passed; Otherwise, returns a String with the number of values proved.

    """
    # print(f"Top of process_sequence for: {seq_id}, {offset}, {code}, {indexes}")
    # First, we generate the Lean associated with this code for the DSL
    if not lean_source:
        lean_source = call_genseq_for_lean_source(socket, seq_id, offset, code)
        print(f"Generated lean code for sequence {seq_id}; source:\n{lean_source}")
    # Next, check if the source function agrees with the values
    result = call_genseq_for_lean_eval(socket, seq_id, lean_source, indexes, values)
    if not result:
        print(f"Values did not agree for sequence {seq_id}")
        # the function didn't agree, so fail immediately
        return False, None
    print(f"Successfully evaluated lean code for sequence {seq_id}")
    times = 1
    while times <= 4:
        tag = seq_id
        # for now, use the tag as the name also; could look at other ways to generate the name
        name = seq_id
        authors = AUTHORS

        # only try to auto derive a fixed set of times, with a decreasing number of values to derive
        # each time:
        max_index = None
        if times == 1:
            max_index = len(values)
            # currently aut derive only supports up to 100
            if max_index > 100:
                max_index = 100
            max_index = str(max_index)
        elif times == 2:
            max_index = "50"
        elif times == 3:
            max_index = "10"
        else:
            max_index = None
            print("building without max_index")
        # Use the template generator to generate a .lean file
        print(
            f"Generating Lean definition with max_index: {max_index}; (times: {times})"
        )
        declaration = generate_lean_code(tag, lean_source, offset, max_index)
        print(f"Lean source file generated for {seq_id}")

        # Try to compile the lean source
        try:
            print(f"Compiling Lean declaration with max_index: {max_index}")
            print(f"{declaration}")
            compile_lean(socket, declaration)
            print(f"Lean declaration compiled for {seq_id}")
            save_file(declaration, tag, authors)
            if not max_index:
                return times == 1, "0"
            return times == 1, max_index
        except AutoDerivationException as e:
            print(f"Auto derivation failed for {tag}; error: {e}")
            times += 1  # try again
        except BuildException as e:
            print(f"Build failed for sequence {tag}; error: {e}")
            times += 1  # try again
        except Exception as e:
            print(f"Build failed for sequence {tag}; error: {e}")
            times += 1  # try again
        if times > 4:
            process_failed_lean_file(tag, declaration)
            return False, None
    process_failed_lean_file(tag, declaration)
    return False, None


def write_report(
    start_time,
    tot_seqs_processed,
    values_not_agree,
    values_agree,
    errors,
    zero_values_proved,
    ten_values_proved,
    fifty_values_proved,
    max_values_proved,
    using_b_file,
    not_using_b_file,
    final=False,
):
    tot_time = timeit.default_timer() - start_time
    if final:
        print("* * * * * * * * * *\n")
        print(
            f"FINAL REPORT:\n  Total Runtime: {tot_time:3f} (seconds); Total Sequences: {tot_seqs_processed}; Errors: {errors}"
        )
    else:
        print(
            f"~~~~~REPORT:\n  Total Runtime: {tot_time:3f} (seconds); Total Sequences: {tot_seqs_processed}; Errors: {errors}"
        )
    print(
        f"Sequence using b-file: {using_b_file}; not using b-file: {not_using_b_file}"
    )
    print(
        f"  Sequences with values not agreeing: {values_not_agree}; Sequences with values agreeing: {values_agree}"
    )
    print(
        f"  Zero proved: {zero_values_proved}; 10 proved: {ten_values_proved}; 50 proved: {fifty_values_proved}; Max proved: {max_values_proved}\n~~~~~\n"
    )


def process_solutions_file(start, stop, start_time):
    """
    Process the solutions file, synthesizing a .lean file for each sequence in the solutions.
    """
    print(f"Beginning to parse solutions file for sequences: {start} to {stop}")
    results = {}
    seq_data = get_all_seq_data()
    print("Finished loading OEIS results JSON file")
    tot_seqs_processed = 0
    errors = 0
    using_b_file = 0
    not_using_b_file = 0
    values_not_agree = 0
    values_agree = 0
    zero_values_proved = 0
    ten_values_proved = 0
    fifty_values_proved = 0
    max_values_proved = 0
    socket = get_genseq_socket(None, None)
    with open(SOLUTIONS_FILE_PATH, "r") as f:
        idx = 0
        current_seq_id = None
        for line in f:
            idx += 1
            # odd numbered lines should be the start of a new sequence
            if idx % 2 == 1:
                if not line.startswith("A") or not ":" in line:
                    print(f"Unexpected beginning of sequence line {idx}")
                    print(f"Line:{line}")
                    continue
                parts = line.split(":")
                # the sequence id's in the solutions file are missing 0s
                current_seq_id = parts[0]
                if len(current_seq_id) < 7:
                    current_seq_id = (
                        current_seq_id[0]
                        + "0" * (7 - len(current_seq_id))
                        + current_seq_id[1:]
                    )
                values = parts[1].strip()
                results[current_seq_id] = {"values": values, "code": ""}
            # even numbered lines should be the code
            else:
                tot_seqs_processed += 1
                if tot_seqs_processed < start:
                    print(
                        f"Skipping {tot_seqs_processed} (tag {current_seq_id}) as it's less that start ({start})"
                    )
                    continue
                if tot_seqs_processed > stop:
                    # we already added 1 and then exceeded the limit, so subtract one and break out
                    tot_seqs_processed = tot_seqs_processed - 1
                    break
                # if for some reason we weren't able to get the sequence id, skip
                # the code as well
                print(
                    f"Processing sequence {current_seq_id} ({tot_seqs_processed}/{stop})"
                )
                if not current_seq_id:
                    continue
                # code is the entire line
                code = line.strip()
                results[current_seq_id]["code"] = code
                offset = seq_data[current_seq_id]["offset"]
                if "," in offset:
                    offset = offset.split(",")[0]
                try:
                    offset_int = int(offset)
                    if offset_int >= 0:
                        # use the b-files values if they are present
                        if seq_data[current_seq_id].get("b-file-distrib"):
                            using_b_file += 1
                            distrib = seq_data[current_seq_id]["b-file-distrib"]
                            indexes = [x[0] for x in distrib]
                            values = [x[1] for x in distrib]
                        # otherwise, fall back to the OEIS values:
                        else:
                            not_using_b_file += 1
                            values = seq_data[current_seq_id]["values"]
                            indexes = list(
                                range(offset_int, (len(values)) + offset_int)
                            )
                        max_proved, rsp = process_sequence(
                            socket, current_seq_id, offset_int, code, indexes, values
                        )
                        # if process_sequence returns None, then the evaluation failed to agree with the
                        # b-file values
                        # Note: max_proved could be true AND max values proved could be less than 100 (or 50, etc.)
                        # if the total number of values known on OEIS is less than 100.
                        if max_proved:
                            max_values_proved += 1
                        if type(rsp) == str:
                            values_agree += 1
                            max_index = int(rsp)
                            if max_index == 0:
                                zero_values_proved += 1
                            elif max_index == 10:
                                ten_values_proved += 1
                            elif max_index == 50:
                                fifty_values_proved += 1
                        else:
                            values_not_agree += 1
                    else:
                        print(
                            f"Sequence {current_seq_id} had a negative offset; skipping."
                        )
                        errors += 1
                except GenseqCrashedException as e:
                    errors += 1
                    print(f"Genseq server cashed; waiting for it to restart.")
                    while True:
                        try:
                            socket = get_genseq_socket(None, None)
                            break
                        except:
                            time.sleep(1)
                except Exception as e:
                    errors += 1
                    print(
                        f"Exception from process sequence on seq {current_seq_id}; details: {e}"
                    )
                write_report(
                    start_time,
                    tot_seqs_processed,
                    values_not_agree,
                    values_agree,
                    errors,
                    zero_values_proved,
                    ten_values_proved,
                    fifty_values_proved,
                    max_values_proved,
                    using_b_file,
                    not_using_b_file,
                )
                current_seq_id = None  # set to None, as this sequence as been processed

    # write final report
    write_report(
        start_time,
        tot_seqs_processed,
        values_not_agree,
        values_agree,
        errors,
        zero_values_proved,
        ten_values_proved,
        fifty_values_proved,
        max_values_proved,
        using_b_file,
        not_using_b_file,
        final=True,
    )

    return results


def main():
    start_time = timeit.default_timer()
    parser = argparse.ArgumentParser(
        prog="synthesize",
        description="Synthesize Lean source files OEIS sequences defined in solutions.",
    )
    parser.add_argument("-s", "--start", type=int, required=True)
    parser.add_argument("-e", "--end", type=int, required=True)
    args = parser.parse_args()
    if args.start > args.end:
        print("Error: start must be <= end.")
        sys.exit(1)
    process_solutions_file(args.start, args.end, start_time)


if __name__ == "__main__":
    main()
