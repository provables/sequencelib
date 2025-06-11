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


keys = dict(
    [
        ("zero", 0),
        ("one", 1),
        ("two", 2),
        ("three", 3),
        ("four", 4),
        ("five", 5),
        ("six", 6),
        ("seven", 7),
        ("eight", 8),
        ("nine", 9),
        ("ten", 10),
        ("eleven", 11),
        ("twelve", 12),
        ("thirteen", 13),
        ("fourteen", 14),
        ("fifteen", 15),
        ("sixteen", 16),
        ("seventeen", 17),
        ("eighteen", 18),
        ("nineteen", 19),
        ("twenty", 20),
    ]
)


def clean_name(name):
    fst, *lst = name.split(".")
    if fst == "Sequence":
        return ".".join(lst)
    return name


def theorems(soup, thms):
    key = lambda thm: keys[thm.split("_")[1]]
    for thm in sorted(thms, key=key):
        thm_data = thms[thm]
        thm_tag = soup.new_tag("a", href=f"#{thm}")
        thm_tag.string = f"{thm_data['index']} ⇒ {thm_data['value']}"
        yield thm_tag


def get_template():
    env = Environment(loader=FileSystemLoader(HERE))
    return env.get_template("values.html.j2")


def all_equivalences(equivalences):
    g = nx.DiGraph()
    g.add_edges_from(equivalences)
    return nx.transitive_closure(g).edges


def values_table(tag, tags, mod):
    template = get_template()
    offset, decls = tags[tag]
    data = OrderedDict()
    equivalences = OrderedDict()
    for seq, thms in decls.items():
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
    headers = ["n"] + list(range(offset, max_n + 1))
    table = template.render(
        headers=headers,
        data=data.values(),
        offset=offset,
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
    for tag, (offset, decls) in tags.items():
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
    print(f"processing {html_file}...")
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
        with open(cache_dir / "oeis_titles.json") as f:
            return json.load(f)
    except FileNotFoundError:
        return {}


def save_cache(result):
    cache_dir = Path(appdirs.user_cache_dir()) / "sequencelib"
    cache_dir.mkdir(parents=True, exist_ok=True)
    with open(cache_dir / "oeis_titles.json", "w") as f:
        json.dump(result, f)


def get_titles(info):
    result = load_cache()
    for tags in info.values():
        for tag in tags:
            print(f"Getting title for {tag}...")
            if tag in result:
                print(f".. [from cache] {result[tag]}")
                continue
            resp = requests.get(f"https://oeis.org/search?q=id:{tag}&fmt=text")
            resp.raise_for_status()
            m = re.search(
                "^%N (\w*) (.*)$", resp.content.decode("utf-8"), flags=re.MULTILINE
            )
            if not m:
                raise ValueError("%N field not found")
            result[tag] = m.groups()[1]
            print(f".. {result[tag]}")
    save_cache(result)
    return result


def info_to_index(info, titles):
    lines = {}
    for mod, tags in info.items():
        for tag, (_, decls) in tags.items():
            decls_for_tag = lines.setdefault(
                tag,
                {
                    "decls": [],
                    "title": titles[tag],
                    "mod": mod,
                    "path": mod_to_path(mod),
                    "local_path": mod_to_local_path(mod)
                },
            )
            for decl in decls:
                decls_for_tag["decls"].append(clean_name(decl))
    return lines


def create_index(info, titles, out_file):
    lines = info_to_index(info, titles)
    out_lines = []
    for tag in sorted(lines):
        title = titles[tag]
        p = lines[tag]["path"]
        out_lines.append(f"* [{tag}]({{{{ site.url }}}}/docs/{p}) [[OEIS ➚](https://oeis.org/{tag}){{:target=\"_blank\"}}]: {title}")
        decls = lines[tag]["decls"]
        for decl in sorted(decls):
            cleaned = clean_name(decl)
            out_lines.append(f"    * [{cleaned}]({{{{ site.url }}}}/docs/{p}#{decl})")
    out_file.write_text("\n".join(out_lines))


def create_doc_index(info, titles, doc_file):
    lines = info_to_index(info, titles)
    env = Environment(loader=FileSystemLoader(HERE))
    template = env.get_template("doc_index.html.j2")
    f = open(doc_file)
    soup = BeautifulSoup(f, "html5lib")
    old = soup.find("div", id="Index")
    if old:
        old.extract()
    div = soup.find("div", class_="mod_doc")
    div.append(BeautifulSoup(template.render(lines=lines), "html5lib").find("div"))
    doc_file.write_text(str(soup))


def main():
    info = get_oeis_info()
    titles = get_titles(info)
    process_all(info)
    create_index(info, titles, HERE / "../home_page/sequences.md")
    create_doc_index(info, titles, HERE / "../.lake/build/doc/Sequencelib.html")


if __name__ == "__main__":
    main()
