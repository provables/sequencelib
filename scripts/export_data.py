#!/usr/bin/env python3

import os
from pathlib import Path
import subprocess
import json
import requests
import logging

PREVIOUS = Path(os.environ.get("SEQUENCELIB_LEAN_INFO", "/tmp/sequencelib_lean_info.json"))
OUTPUT = Path(os.environ.get("OUTPUT", "/tmp/output"))
HERE = Path(__file__).parent.resolve()

logger = logging.getLogger(__name__)


def load(f):
    try:
        with open(f) as f:
            return json.load(f)
    except FileNotFoundError:
        return {}


def save(f, result):
    with open(f, "w") as f:
        json.dump(result, f, separators=(',', ':'))


def get_oeis_info():
    output = subprocess.run(
        ["lake", "exe", "oeisinfo"],
        cwd=HERE / "..",
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        check=True,
    )
    result = json.loads(output.stdout)
    return result


def parse_oeis_entry(text):
    result = {}
    for line in text.splitlines():
        kind, _, rest = line.split(maxsplit=2)
        if kind == "%N":
            result["description"] = rest
        if kind == "%K":
            result["keywords"] = rest.split(",")
    return result


def build_github_url(seqno):
    return (
        "https://raw.githubusercontent.com/oeis/oeisdata/refs/heads/"
        f"main/seq/{seqno[:4]}/{seqno}.seq"
    )


def get_data_for_tag(tag):
    resp = requests.get(build_github_url(tag))
    resp.raise_for_status()
    return parse_oeis_entry(resp.text)


def update_seq_data(lean_info, previous: dict):
    for module, tags in lean_info.items():
        for tag, seq_data in tags.items():
            try:
                seq_data["description"] = previous[module][tag]["description"]
                seq_data["keywords"] = previous[module][tag]["keywords"]
                logger.info(f"cache hit for {tag}")
            except KeyError:
                logger.info(f"seq data for {tag} from github")
                seq_data.update(get_data_for_tag(tag))


def main():
    logger.info(f"Loading previous file {PREVIOUS}")
    previous = load(PREVIOUS)
    logger.info("Getting Lean info...")
    info = get_oeis_info()
    logger.info("Updating...")
    update_seq_data(info, previous)
    logger.info(f"Writing into {OUTPUT}")
    save(OUTPUT, info)
    logger.info("Done")

if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    logger.info("Started")
    main()