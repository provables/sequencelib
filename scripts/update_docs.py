#!/usr/bin/env python3

from collections import OrderedDict
import subprocess
import json
import pathlib
import re

from pathlib import Path

import appdirs
import requests
from bs4 import BeautifulSoup
from jinja2 import Environment, FileSystemLoader
import networkx as nx
import html5lib

HERE = Path(__file__).parent.resolve()
MAX_VALUE = 20


def get_oeis_info():
    result = subprocess.run(
        ["lake", "exe", "oeisinfo"],
        cwd=HERE / "..",
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        check=True,
    )
    return json.loads(result.stdout)


def clean_name(name):
    fst, *lst = name.split(".")
    if fst == "Sequence":
        return ".".join(lst)
    return name


def get_template():
    env = Environment(loader=FileSystemLoader(HERE))
    return env.get_template("values.html.j2")


def all_equivalences(equivalences):
    g = nx.DiGraph()
    g.add_edges_from(equivalences)
    return nx.transitive_closure(g).edges


def values_table(tag, tags, mod):
    template = get_template()
    decls = tags[tag]
    data = OrderedDict()
    equivalences = OrderedDict()
    for seq, decl_info in decls["decls"].items():
        thms = decl_info["thms"]
        d = {"label": clean_name(seq), "seq": seq, "max": 0}
        values = [""] * MAX_VALUE
        for thm in thms.values():
            if thm["type"] == "equiv":
                equivalences[thm["seq1"], thm["seq2"]] = {
                    "thm": thm["theorem"],
                    "clean_thm": clean_name(thm["theorem"]),
                    "seq1": clean_name(thm["seq1"]),
                    "seq2": clean_name(thm["seq2"]),
                }
                continue
            if thm["type"] != "value":
                continue
            values[thm["index"]] = {"value": thm["value"], "thm": thm["theorem"]}
            d["max"] = max(d["max"], thm["index"])
        d["values"] = values
        data[seq] = d

    for seq1, seq2 in all_equivalences(equivalences):
        for idx, (value1, value2) in enumerate(
            zip(data[seq1]["values"], data[seq2]["values"])
        ):
            if "thm" in value1 and "thm" not in value2:
                data[seq2]["values"][idx] = {"value": value1["value"]}
            if "thm" not in value1 and "thm" in value2:
                data[seq1]["values"][idx] = {"value": value2["value"]}

    max_n = max([row["max"] for row in data.values()])
    headers = ["n"] + list(range(decls["offset"], max_n + 1))
    table = template.render(
        headers=headers,
        data=data.values(),
        offset=decls["offset"],
        max_n=max_n,
        tag=tag,
        equivalences=equivalences.values(),
        mod=mod,
    )
    return BeautifulSoup(table, "html5lib")


def insert(soup, mod, tags):
    old = soup.find("div", class_="sequencelib")
    if old:
        old.extract()
    p_tag = soup.new_tag("p")
    p_tag.append("OEIS sequences formalized in this file:")
    ul_tag = soup.new_tag("ul")
    for tag in tags:
        ul_tag.append(values_table(tag, tags, mod))
    h1_tag = soup.find("h1", class_="markdown-heading")
    if not h1_tag:
        m = soup.find("main")
        h1_tag = soup.new_tag("h1")
        h1_tag.string = mod
        h1_tag["class"] = "markdown-heading"
        m.insert(0, h1_tag)
    div_tag = soup.new_tag("div")
    div_tag["class"] = "sequencelib"
    div_tag.append(p_tag)
    div_tag.append(ul_tag)
    h1_tag.insert_after(div_tag)


def process(html_file, mod, tags):
    f = open(html_file)
    soup = BeautifulSoup(f, "html5lib")
    print(f"processing {html_file.resolve()}...")
    insert(soup, mod, tags)
    return str(soup)


def mod_to_path(mod):
    return mod.replace(".", "/") + ".html"


def mod_to_local_path(mod):
    return mod.split(".")[-1] + ".html"


def process_mod(mod, tags):
    html_file = HERE / "../.lake/build/doc" / mod_to_path(mod)
    out = process(html_file, mod, tags)
    html_file.write_text(out)


def process_all(info):
    for mod, tags in info.items():
        process_mod(mod, tags)


def load_cache():
    cache_dir = Path(appdirs.user_cache_dir()) / "sequencelib"
    try:
        with open(cache_dir / "oeis_data.json") as f:
            return json.load(f)
    except FileNotFoundError:
        return {}


def save_cache(result):
    cache_dir = Path(appdirs.user_cache_dir()) / "sequencelib"
    cache_dir.mkdir(parents=True, exist_ok=True)
    with open(cache_dir / "oeis_data.json", "w") as f:
        json.dump(result, f)


def build_github_url(seqno):
    return (
        "https://raw.githubusercontent.com/oeis/oeisdata/refs/heads/"
        f"main/seq/{seqno[:4]}/{seqno}.seq"
    )


def parse_oeis_entry(text):
    result = {"values": []}
    for line in text.splitlines():
        kind, _, rest = line.split(maxsplit=2)
        if kind == "%N":
            result["title"] = rest
        if kind == "%K":
            result["keywords"] = rest.split(",")
        if kind in ("%S", "%T", "%U"):
            result["values"].extend(filter(None, rest.split(",")))
    return result


def get_data_for_tag(tag):
    resp = requests.get(build_github_url(tag))
    resp.raise_for_status()
    return parse_oeis_entry(resp.text)


def get_oeis_data(info):
    result = load_cache()
    for tags in info.values():
        for tag in tags:
            print(f"Getting OEIS data for {tag}...")
            if tag in result:
                print(f".. [from cache] {result[tag]['title']}")
                continue
            result[tag] = get_data_for_tag(tag)
    save_cache(result)
    return result


IS_COMPUTABLE = {
    True: (
        "computable",
        "Lean definition is computable",
        "B4CDF8",
        "tags-border-color",
    ),
    False: (
        "non-computable",
        "Lean definition is tagged `noncomputable`",
        "E0D1F1",
        "hamburger-border-color",
    ),
}

CODOMAIN = {
    "Codomain.Nat": (
        "&nbsp;&nbsp;ℕ&nbsp;&nbsp;",
        "The sequence is non-negative",
        "D4D4D8",
        "tags-border-color",
    ),
    "Codomain.Int": (
        "&nbsp;&nbsp;ℤ&nbsp;&nbsp;",
        "The sequence is signed",
        "D4D4D8",
        "tags-border-color",
    ),
}


def info_to_index(info, data):
    lines = {}
    for mod, tags in info.items():
        for tag, decls_info in tags.items():
            decls = decls_info["decls"]
            decls_for_tag = lines.setdefault(
                tag,
                {
                    "decls": [],
                    "title": data[tag]["title"],
                    "mod": mod,
                    "path": mod_to_path(mod),
                    "local_path": mod_to_local_path(mod),
                },
            )
            for decl in decls:
                decls_for_tag["decls"].append(
                    {
                        "clean_name": clean_name(decl),
                        "name": decl,
                        "isComputable": IS_COMPUTABLE[decls[decl]["isComputable"]],
                        "codomain": CODOMAIN[decls[decl]["codomain"]],
                    }
                )
    return lines


def tag_html(text, bg, tooltip=None):
    tt = f'title="{tooltip}"' if tooltip else ""
    return (
        f'<span {tt} style="background: #{bg}; color: black; padding: 2px 8px; '
        f'border-radius: 12px; font-size: 11px; display: inline-block; margin: 2px;">{text}</span>'
    )


def create_index(info, data, out_file):
    lines = info_to_index(info, data)
    out_lines = []
    for tag in sorted(lines):
        title = data[tag]["title"]
        title = re.sub(r"([\*_])", r"\\\1", title)
        p = lines[tag]["path"]
        out_lines.append(
            f'* [{tag}]({{{{ site.url }}}}/docs/{p}) [[OEIS ➚](https://oeis.org/{tag}){{:target="_blank"}}]: {title}'
        )
        decls = lines[tag]["decls"]
        for decl in sorted(decls, key=lambda x: x["clean_name"]):
            computable_tag = decl["isComputable"]
            computable_html = tag_html(
                computable_tag[0], computable_tag[2], computable_tag[1]
            )
            codomain_tag = decl["codomain"]
            codomain_html = tag_html(codomain_tag[0], codomain_tag[2], codomain_tag[1])
            out_lines.append(
                f"    * [{decl['clean_name']}]({{{{ site.url }}}}/docs/{p}#{decl['name']}) "
                f"{computable_html} {codomain_html}"
            )
    out_file.write_text("\n".join(out_lines))


def create_doc_index(info, data, doc_file):
    lines = info_to_index(info, data)
    env = Environment(loader=FileSystemLoader(HERE))
    template = env.get_template("doc_index.html.j2")
    f = open(doc_file)
    soup = BeautifulSoup(f, "html5lib")
    old = soup.find("div", id="Index")
    if old:
        old.extract()
    div = soup.find("div", class_="mod_doc")
    if div is not None:
        b = BeautifulSoup(template.render(lines=lines), "html5lib").find("div")
        if b is not None:
            div.append(b)
    doc_file.write_text(str(soup))


def main():
    info = get_oeis_info()
    data = get_oeis_data(info)
    process_all(info)
    create_index(info, data, HERE / "../home_page/sequences.md")
    create_doc_index(info, data, HERE / "../.lake/build/doc/Sequencelib.html")


if __name__ == "__main__":
    main()
