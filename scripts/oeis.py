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

import os
import json
import timeit


# path to a local checkout of the OEIS git repository
OEIS_INSTALL = os.environ.get(
    "OEIS_INSTALL", os.path.expanduser("~/gits/lean4/oeisdata")
)

RESULT_FILE = os.environ.get(
    "RESULT_FILE", os.path.expanduser("~/oeis_results_more.json")
)
PYTHON_RESULT_FILE = os.environ.get(
    "PYTHON_RESULT_FILE", os.path.expanduser("~/oeis_python_results_more.json")
)


def write_python_results(result):
    d = {}
    for k, v in result.items():
        if "python_src" in v.keys() and v["python_src"]:
            d[k] = v
    with open(PYTHON_RESULT_FILE, "w+") as r:
        r.write(json.dumps(d))


def parse_raw_files(root_dir):
    """
    Builds a dictionary of sequence: content, as a string.
    """
    start = timeit.default_timer()
    result = {}
    errors = 0
    python_seqs = 0
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
            tot_seqs = len(result.keys())
            if tot_seqs % 50000 == 0:
                cur = timeit.default_timer()
                tot_sec = cur - start
                print(
                    f"Processed {tot_seqs} total sequences; current run time: {tot_sec} seconds."
                )
                with open(RESULT_FILE, "w+") as r:
                    r.write(json.dumps(result))

            # add the raw contents to the dictionary
            try:
                with open(file_path, "r") as file:
                    for line in file:
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

            except Exception as e:
                print(f"Error reading file {file_path}: {e}")
                errors += 1

    # Write final output
    cur = timeit.default_timer()
    tot_sec = cur - start
    print(f"Processed {tot_seqs} total sequences; current run time: {tot_sec} seconds.")
    with open(RESULT_FILE, "w+") as r:
        r.write(json.dumps(result))
    write_python_results(result)
    print(f"Total errors: {errors}")


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


if __name__ == "__main__":
    parse_raw_files(OEIS_INSTALL)
    count_existing_result_file()
