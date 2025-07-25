"""
Script to generate a .lean shell file for beginning work to add a new sequence to SequenceLib.
"""
import argparse
from pathlib import Path 
from jinja2 import Environment, FileSystemLoader

HERE = Path(__file__).parent.resolve()

def args_to_context(args):

    return {
        "sequece_tag": args.tag, 
        "sequence_name": args.name, 
        "sequence_offset": args.offset, 
        "authors": args.authors, 
        "sequence_description": args.description,
        "source": args.source,
        "max_index": args.max_index,
    }


def create_lean_file(args):
    env = Environment(loader=FileSystemLoader(HERE), trim_blocks=True)
    template = env.get_template("seq.j2")
    context = args_to_context(args)
    print(template.render(**context))


def main():
    parser = argparse.ArgumentParser(
                    prog='sequece temaplte',
                    description='Generate a Lean source file template for an OEIX seuqnece')
    parser.add_argument("-t", "--tag", required=True)
    parser.add_argument("-n", "--name", required=True)
    parser.add_argument("-o", "--offset", required=True)
    parser.add_argument("-a", "--authors", required=True)
    parser.add_argument("-d", "--description", default=None)
    parser.add_argument("-s", "--source", default=None)
    parser.add_argument("-m", "--max_index", default=None)
    args = parser.parse_args()
    # print(f"Source code: \n{args.source}")
    # print("* * * * *")
    create_lean_file(args)


if __name__ == "__main__":
    main()