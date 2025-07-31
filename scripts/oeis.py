"""
Module to parse the OEIS source files and identify sequences with certain properties.

This script requires a local checkout of the OEIS git repository. Set the OEIS_INSTALL
variable to the root of the install path.

Also, update paths in RESULT_FILE and PYTHON_RESULT_FILE to point to the output location of your
choices.

Them, activate a Python 12 poetry shell and run with
  python oeis.py

This will generate output files
"""

from datetime import datetime
import numpy as np
import os
import random
import subprocess
import sys
import json
import requests
import timeit


# Path to a local checkout of the OEIS git repository
OEIS_INSTALL = os.environ.get(
    "OEIS_INSTALL", os.path.expanduser("~/gits/lean4/oeisdata")
)

# All results
RESULT_FILE = os.environ.get(
    "RESULT_FILE", os.path.expanduser("~/oeis_results_all.json")
)

# Just results related to sequences with a python function
PYTHON_RESULT_FILE = os.environ.get(
    "PYTHON_RESULT_FILE", os.path.expanduser("~/oeis_python_results_all.json")
)

# Size of the uniform distributions to generate for sequences that have b-files
UNI_DIST_SIZE = os.environ.get("UNI_DIST_SIZE", 100)
try:
    UNI_DIST_SIZE = int(UNI_DIST_SIZE)
except:
    print(f"Error: UNI_DIST_SIZE must be an integer")
    sys.exit(1)


# Set to 0 for unlimited
MAX_SEQUENCES = int(os.environ.get("MAX_SEQUENCES", 0))
if MAX_SEQUENCES > 0:
    print(f"MAX_SEQUENCES set; this program will quit after {MAX_SEQUENCES} sequences.")
else:
    print("MAX_SEQUENCES not set; this program will process the entire OEIS.")


def write_python_results(result):
    d = {}
    for k, v in result.items():
        if "python_src" in v.keys() and v["python_src"]:
            d[k] = v
    with open(PYTHON_RESULT_FILE, "w+") as r:
        r.write(json.dumps(d))


def initialize_git_lfs():
    """
    The git lfs install command must be run once per repository for initialization.
    """
    r = subprocess.run(
        ["git", "lfs", "install"],
        cwd=OEIS_INSTALL,
        capture_output=True,
    )
    r.check_returncode()


def get_git_lfs_file_list():
    """
    Use the git lfs ls-files command to get all files associated with git lfs.
    """
    results = []
    r = subprocess.run(
        ["git", "lfs", "ls-files"], cwd=OEIS_INSTALL, capture_output=True
    )
    r.check_returncode()
    vals = r.stdout.decode().split("\n")
    for v in vals:
        try:
            results.append(v.split(" - ")[1])
        except:
            pass
    return results


def check_ensure_b_file(seq_id, b_files):
    """
    Checks if the repo has a b-file for a specific sequence, and
    ensure a b-file is present on the local disk if it does.
    If not, uses git lfs to fetch a b-file associated with a sequence id.
    """
    # directory is first four characters of sequence id
    dr = seq_id[0:4]
    name = "b" + seq_id[1:] + ".txt"
    path = os.path.join("files", dr, name)
    found = False
    for f in b_files:
        if path in f:
            found = True
            break
    # if not found:
    #     return None
    full_path = os.path.join(OEIS_INSTALL, path)
    if not os.path.exists(full_path):
        return None
    with open(full_path, "r") as f:
        # we have already checked out the actual file
        if not "version https://git-lfs" in f.readline():
            return full_path
    # Getting the data requires two git lfs commands: fetch and checkout
    try:
        r = subprocess.run(
            ["git", "lfs", "fetch", "-X=", f"-I={path}"],
            cwd=OEIS_INSTALL,
            capture_output=True,
        )
        r.check_returncode()
    except Exception as e:
        print(f"Could not git lfs fetch for seq {seq_id}; error: {e}")

    try:
        r = subprocess.run(
            ["git", "lfs", "checkout", f"{path}"],
            cwd=OEIS_INSTALL,
            capture_output=True,
        )
        r.check_returncode()
    except Exception as e:
        print(f"Could not git lfs checkout for seq {seq_id}; error: {e}")
        raise e
    return full_path


def parse_local_b_file(full_path):
    """
    Parse a b-file that has been checked out to the local git repository
    already at path `full_path`.
    """
    values = []
    with open(full_path, "r") as f:
        for line in f:
            try:
                raw = line.strip().split(" ")
                values.append([int(raw[0]), int(raw[1])])
            except:
                # if we can't parse a specific line, just continue
                pass
    return values


def get_b_file_data_http(seq_name):
    """
    Use an HTTP request to the oeis.org to get the b-file data.
    Note: this function is not used in the large job since oeis.org will
    rate limit you.
    """
    result = {}
    b_name = "b" + seq_name[1:] + ".txt"
    url = f"https://oeis.org/{seq_name}/{b_name}"
    try:
        rsp = requests.get(url)
        rsp.raise_for_status()
        data = rsp.content.decode().split("\n")
        values = []
        # convert text data to integer tuples
        for d in data:
            try:
                pair = (int(d.split(" ")[0]), int(d.split(" ")[1]))
                values.append(pair)
            except:
                # In some examples, the end of the b-file contains empty strings or
                # other invalid data; cf., https://oeis.org/A001476/b001476.txt
                # In such cases, we just ignore the line
                pass
        result[seq_name]["b-file-values"] = values
        # generate a uniform distribution of values of a fixed size.
        distrib = []
        tot = len(values)
        for i in range(UNI_DIST_SIZE):
            idx = random.randint(0, tot)
            val = values[idx]
            distrib.append((idx, val))
        result[seq_name]["b-file-distrib"] = distrib
    except:
        # no b-file
        result[seq_name]["b-file"] = None
        no_b_file += 1
    return result


def parse_raw_files(root_dir, b_files):
    """
    Builds a dictionary of sequence: content, as a string.
    """
    start = timeit.default_timer()
    result = {}
    tot_seqs = 0
    errors = 0
    python_seqs = 0
    b_file_ct = 0
    no_b_file = 0
    path = os.path.join(root_dir, "seq")
    for dirpath, _, files in os.walk(path):
        for f in files:
            file_path = os.path.join(dirpath, f)
            read_python_source = False

            # skip non-sequence files
            if not file_path.endswith(".seq"):
                continue
            seq_name = file_path.split(".seq")[0].split("/")[-1]
            result[seq_name] = {}
            tot_seqs += 1

            # write outputs every 50K sequences:
            if tot_seqs % 1000 == 0:
                cur = timeit.default_timer()
                tot_sec = cur - start
                print(
                    f"Processed {tot_seqs} total sequences; current run time: {tot_sec} seconds."
                )
                with open(RESULT_FILE, "w+") as r:
                    r.write(json.dumps(result))
                print(f"Sequences with b-file: {b_file_ct}")
                print(f"Sequences with no b-file: {no_b_file}")

            # Parsing of the .seq file ----
            # add the raw contents to the dictionary
            try:
                with open(file_path, "r") as file:
                    for line in file:
                        # first, check if we are in the middle of parsing a Python code source:
                        if read_python_source:
                            #  if python_seqs == 1:
                            #      print(f"processing line for {seq_name}; line:{line}")
                            new_lang_line = f"%o {seq_name} ("
                            # if the line does not start with o
                            if not line.startswith("%o") or line.startswith(
                                new_lang_line
                            ):
                                #  if python_seqs == 1:
                                #      print(f"line did not start with %o; quitting.")
                                # we reached the end of the python code
                                read_python_source = False
                            else:
                                # read the next line of code
                                new_python_line_frag = f"%o {seq_name} "
                                try:
                                    code = line.split(new_python_line_frag)[1]
                                    #  if python_seqs == 1:
                                    #      print(f"\n\n***adding new python src line: {code}")
                                    result[seq_name]["python_src"] += f"{code}\n"
                                #  write_python_results(result)
                                except Exception as e:
                                    # we could not read the python code line somehow...
                                    #  if python_seqs == 1:
                                    #      print(f"got error! {e}")
                                    errors += 1

                        # get the sequence description
                        if line.startswith("%N"):
                            initial_fragment = f"%N {seq_name} "
                            try:
                                result[seq_name]["desc"] = line.split(initial_fragment)[
                                    1
                                ]
                            except Exception as e:
                                errors += 1
                                print(f"Got error trying to get the description: {e}")

                        # get the first values of the sequence
                        if (
                            line.startswith("%S")
                            or line.startswith("%T")
                            or line.startswith("%U")
                        ):
                            first_two_chars = line[:2]
                            initial_fragment = f"{first_two_chars} {seq_name} "
                            try:
                                values = line.split(initial_fragment)[1].split(",")
                                values = [int(s) for s in values if not s == "\n"]
                                # append the values if
                                if "values" not in result[seq_name]:
                                    result[seq_name]["values"] = values
                                else:
                                    result[seq_name]["values"].extend(values)
                            except Exception as e:
                                errors += 1
                                print(f"Got error trying to get the values: {e}")

                        # get the offset
                        if line.startswith("%O"):
                            initial_fragment = f"%O {seq_name} "
                            try:
                                value = line.split(initial_fragment)[1]
                                # we care about the first value in the offset line
                                if "," in value:
                                    value = value.split(",")[0]
                                result[seq_name]["offset"] = value
                            except Exception as e:
                                errors += 1
                                print(f"Got error trying to compute offset: {e}")
                        # check if there is a program associated with the sequence
                        # cf., https://oeis.org/eishelp1.html
                        if line.startswith("%p"):
                            # there is a maple program
                            result[seq_name]["maple"] = True
                        elif line.startswith("%t"):
                            # there is a Mathematics program
                            result[seq_name]["mathematica"] = True
                        elif line.startswith("%o"):
                            # there is a program of language "other"
                            if "python" in line.lower():
                                result[seq_name]["python"] = True
                                # read the rest of the python source
                                if not "python_src" in result[seq_name].keys():
                                    python_seqs += 1
                                    result[seq_name]["python_src"] = ""
                                read_python_source = True
                    # check if there is a b-file associated with the sequence
                    try:
                        full_path = check_ensure_b_file(
                            seq_id=seq_name, b_files=b_files
                        )
                        if full_path:
                            values = parse_local_b_file(full_path=full_path)
                            result[seq_name]["b-file-path"] = full_path
                            # result[seq_name]["b-file-values-all"] = values
                            if len(values) > 0:
                                b_file_ct += 1
                                idxs = np.random.randint(
                                    0, len(values) - 1, UNI_DIST_SIZE
                                )
                                result[seq_name]["b-file-distrib"] = [
                                    values[x] for x in idxs
                                ]
                            else:
                                result[seq_name]["b-file-distrib"] = []
                            del values
                        else:
                            no_b_file += 1
                    except Exception as e:
                        print(
                            f"Got exception reading b-file for {seq_name}, so skipping; error: {e}"
                        )
                        result[seq_name]["b-file"] = None

            except Exception as e:
                print(f"Error reading file {file_path}: {e}")
                errors += 1
            if MAX_SEQUENCES > 0 and tot_seqs >= MAX_SEQUENCES:
                write_final_report(
                    start, tot_seqs, result, errors, b_file_ct, no_b_file
                )
                return
    write_final_report(start, tot_seqs, result, errors, b_file_ct, no_b_file)


def write_final_report(start, tot_seqs, result, errors, b_file_ct, no_b_file):
    cur = timeit.default_timer()
    tot_sec = cur - start
    print(f"Processed {tot_seqs} total sequences; current run time: {tot_sec} seconds.")
    with open(RESULT_FILE, "w+") as r:
        r.write(json.dumps(result))
    write_python_results(result)
    print(f"Total errors: {errors}")
    print(f"Sequences with b-file: {b_file_ct}")
    print(f"Sequences with no b-file: {no_b_file}")


def count_existing_result_file():
    """
    Compute stats from an existing result file generate from parse_raw_files.
    """
    with open(RESULT_FILE, "r") as f:
        d = json.load(f)
    total_seqs = len(d.keys())
    tot_python = 0
    tot_maple = 0
    tot_mathematica = 0
    for seq, val in d.items():
        if "python" in val.keys():
            tot_python += 1
        if "maple" in val.keys():
            tot_maple += 1
        if "mathematica" in val.keys():
            tot_mathematica += 1

    print(f"TOTAL NUM SEQUENCES: {total_seqs}")
    print(f"Total with Python: {tot_python}; ({tot_python/total_seqs * 100}%)")
    print(f"Total with Maple: {tot_maple}; ({tot_maple/total_seqs * 100}%)")
    print(
        f"Total with Mathematica: {tot_mathematica}; ({tot_mathematica/total_seqs * 100}%)"
    )


def main():
    print(f"OEIS analyzer starting at {datetime.now()}")
    initialize_git_lfs()
    print(f"Git repo initialized with git lfs")
    parse_raw_files(OEIS_INSTALL, [])
    count_existing_result_file()


if __name__ == "__main__":
    main()
