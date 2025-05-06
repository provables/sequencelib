import subprocess
import json
import pathlib

import more_itertools
from bs4 import BeautifulSoup
import html5lib

def get_oeis_info():
    result = subprocess.run(["./run_meta.sh"], capture_output=True, text=True)
    return json.loads(result.stdout)

def theorems(soup, thms):
    for thm, thm_data in thms.items():
        thm_tag = soup.new_tag('a', href=f'#{thm}')
        thm_tag.string = str(thm_data['value'])
        yield thm_tag

def insert(soup, mod, tags):
    old = soup.find('div', class_='sequencelib')
    if old:
        old.extract()
    p_tag = soup.new_tag('p')
    p_tag.append('OEIS sequences formalized in this file:')
    ul_tag = soup.new_tag('ul')
    for tag, decls in tags.items():
        oeis_tag = soup.new_tag('a', href=f'https://oeis.org/{tag}')
        oeis_tag.string = tag
        li_tag = soup.new_tag('li')
        li_tag.append(oeis_tag)
        decl_list = soup.new_tag('ul')
        for decl, thms in decls.items():
            decl_tag = soup.new_tag('a', href=f'#{decl}')
            decl_tag.string = decl
            decl = soup.new_tag('li')
            decl.append(decl_tag)
            if thms:
                decl.append(': ')
                print(thms)
                decl.extend(list(
                    more_itertools.intersperse(", ", theorems(soup, thms))))
                print(decl)
            decl_list.append(decl)
        ul_tag.append(li_tag)
        ul_tag.append(decl_list)  
    h1_tag = soup.find('h1', class_='markdown-heading')
    if not h1_tag:
        m = soup.find('main')
        h1_tag = soup.new_tag('h1')
        h1_tag.string = mod
        h1_tag['class'] = 'markdown-heading'
        m.insert(0, h1_tag)
    div_tag = soup.new_tag('div')
    div_tag['class'] ='sequencelib'
    div_tag.append(p_tag)
    div_tag.append(ul_tag)
    h1_tag.insert_after(div_tag)

def process(html_file, mod, tags):
    f = open(html_file)
    soup = BeautifulSoup(f, 'html5lib')
    print(f"processing {html_file}...")
    insert(soup, mod, tags)
    return str(soup)

def process_mod(mod, tags):
    html_file = pathlib.Path(".lake/build/doc") / (mod.replace(".", "/") + ".html")
    out = process(html_file, mod, tags)
    html_file.write_text(out)

def process_all():
    info = get_oeis_info()
    for mod, tags in info.items():
        process_mod(mod, tags)