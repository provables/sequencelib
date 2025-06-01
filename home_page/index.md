---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

# layout: home
usemathjax: true
---

# Sequencelib

A platform for formalizing sequences from
[The On-Line Encyclopedia of Integer Sequences (OEIS)](https://oeis.org/).

This site contains the formalization in Lean 4 of a collection of sequences from OEIS. It includes
metaprogramming tools that [index](#index) the sequences, display values 
([example]({{ site.url }}/docs/Sequencelib/Fibonacci.html)), and 
display equivalences among them ([example]({{ site.url }}/docs/Sequencelib/Catalan.html)).

## Contributing

We welcome contributions of new sequences, new values for existing sequences, and
theorems about them. Please, see the 
[guidelines for contributing]({{ site.url }}/contributing.html).

## Index

{% include_relative sequences.md %}

---

Useful links:

* [Zulip chat for Lean](https://leanprover.zulipchat.com/) for coordination
* [Blueprint]({{ site.url }}/blueprint/)
* [Blueprint as pdf]({{ site.url }}/blueprint.pdf)
* [Dependency graph]({{ site.url }}/blueprint/dep_graph_document.html)
* [Doc pages for this repository]({{ site.url }}/docs/Sequencelib/Basic.html)