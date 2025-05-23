#!/usr/bin/env python3

import subprocess
import json
import pathlib
import re

import more_itertools
import requests
from bs4 import BeautifulSoup
import html5lib


def get_oeis_info():
    result = subprocess.run(
        ["./run_meta.sh"],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        check=True,
    )
    return json.loads(result.stdout)


keys = dict([
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
])


def clean_name(name):
    fst, *lst = name.split('.')
    if fst == "Sequence":
        return '.'.join(lst)
    return name


def theorems(soup, thms):
    key = lambda thm: keys[thm.split("_")[1]]
    for thm in sorted(thms, key=key):
        thm_data = thms[thm]
        thm_tag = soup.new_tag("a", href=f"#{thm}")
        thm_tag.string = str(thm_data["value"])
        yield thm_tag


def insert(soup, mod, tags):
    old = soup.find("div", class_="sequencelib")
    if old:
        old.extract()
    p_tag = soup.new_tag("p")
    p_tag.append("OEIS sequences formalized in this file:")
    ul_tag = soup.new_tag("ul")
    for tag, decls in tags.items():
        oeis_tag = soup.new_tag("a", href=f"https://oeis.org/{tag}")
        oeis_tag.string = tag
        li_tag = soup.new_tag("li")
        li_tag.append(oeis_tag)
        decl_list = soup.new_tag("ul")
        for decl, thms in decls.items():
            decl_tag = soup.new_tag("a", href=f"#{decl}")
            decl_tag.string = clean_name(decl)
            decl = soup.new_tag("li")
            decl.append(decl_tag)
            if thms:
                value_thms = {k: v for (k, v) in thms.items() if v == "value"}
                decl.append(": ")
                decl.extend(
                    list(more_itertools.intersperse(", ", theorems(soup, value_thms)))
                )
            decl_list.append(decl)
        ul_tag.append(li_tag)
        ul_tag.append(decl_list)
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


def process_mod(mod, tags):
    html_file = pathlib.Path(".lake/build/doc") / mod_to_path(mod)
    out = process(html_file, mod, tags)
    html_file.write_text(out)


def process_all(info):
    for mod, tags in info.items():
        process_mod(mod, tags)


def get_titles(info):
    result = {}
    for tags in info.values():
        for tag in tags:
            print(f"Getting title for {tag}...")
            resp = requests.get(f"https://oeis.org/search?q=id:{tag}&fmt=text")
            resp.raise_for_status()
            m = re.search(
                "^%N (\w*) (.*)$", resp.content.decode("utf-8"), flags=re.MULTILINE
            )
            if not m:
                raise ValueError("%N field not found")
            result[tag] = m.groups()[1]
            print(f".. {result[tag]}")
    return result


def create_index(info, titles):
    out = pathlib.Path("home_page/sequences.md")
    lines = {}
    for mod, tags in info.items():
        for tag, decls in tags.items():
            decls_for_tag = lines.setdefault(tag, {})
            for decl in decls:
                decls_for_tag[decl] = mod
    out_lines = []
    for tag in sorted(lines):
        title = titles[tag]
        out_lines.append(f"* [{tag}](https://oeis.org/{tag}): {title}")
        decls = lines[tag]
        for decl in sorted(decls):
            mod = decls[decl]
            p = mod_to_path(mod)
            cleaned = clean_name(decl)
            out_lines.append(
                f"    * [{cleaned}](https://provables.github.io/sequencelib/docs/{p}#{decl})"
            )
    out.write_text("\n".join(out_lines))


def main():
    info = get_oeis_info()
    titles = get_titles(info)
    process_all(info)
    create_index(info, titles)


if __name__ == "__main__":
    main()
