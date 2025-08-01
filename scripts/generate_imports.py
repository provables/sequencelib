#!/usr/bin/env python3

from pathlib import Path
from jinja2 import Environment, BaseLoader

HERE = Path(__file__).parent.resolve()

EXCLUDE_DIRS = ["Meta", "Defs"]

TEMPLATE = """\
/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/

{% for row in IMPS %}
import {{ row }}
{% endfor %}

/-!
# Sequencelib

A collection of formalizations of sequences from the
[The On-Line Encyclopedia of Integer Sequences (OEIS)](https://oeis.org/).

- [Main website](https://provables.github.io/sequencelib/)

-/
"""


def generate_imports():
    root = (HERE / "..").resolve()
    files_dir = root / "Sequencelib"
    for fpath in files_dir.rglob("*.lean"):
        if any(fpath.is_relative_to(files_dir / p) for p in EXCLUDE_DIRS):
            continue
        yield str(fpath.resolve().relative_to(root).with_suffix("")).replace("/", ".")


def sorted_imports():
    yield from sorted(generate_imports())


def render():
    template = Environment(trim_blocks=True).from_string(TEMPLATE)
    return template.render(IMPS=sorted_imports(), foo="sdf")


def main():
    out = HERE / "../Sequencelib.lean"
    out.write_text(render())


if __name__ == "__main__":
    main()
