# Sequencelib

A platform for formalizing sequences from
[The On-Line Encyclopedia of Integer Sequences (OEIS)](https://oeis.org).

The [main site](https://provables.github.io/sequencelib) contains an
automatically generated index of the sequences formalized in this repository.
You can also find more detailed instructions for developing, building, and contributing.

## MCP server

### Prerequsites
* I did not manage to successfully import newer python libraries like `fastmcp` using NixOS, so you need to have `uv` installed on your local computer
* The full oeis data `oeis_results_all.json` from https://github.com/provables/sequencelib-data
    * Should be able to download using `task ensure-uptodate-sequencelib-data`
* A running Lean server from git@github.com:provables/synthetic.git
    * There's one running at 143.215.130.123 port 8000


### Installation of MCP
The [MCP protocol](https://modelcontextprotocol.io/docs/getting-started/intro) is an open-source standard for connecting AI applications to external systems.

The current MCP server is tested on Claude Desktop. To generate the config file for conenction to this MCP, run
```
uv run python scripts/gen_mcp_config.py --genseq-server 143.215.130.123 --genseq-port 8000
```
where `143.215.130.123` and `8000` are the genseq Lean server address and port.
On Mac, Claude Desktop uses `~/Library/Application Support/Claude/claude_desktop_config.json` to store mcp configurations.
For example, in order to import the config file to claude desktop, run
```
uv run python scripts/gen_mcp_config.py --genseq-server 143.215.130.123 --genseq-port 8000 > "~/Library/Application Support/Claude/claude_desktop_config.json"
```

## Quickstart

This project is a standard [Lake](https://lean-lang.org/documentation/setup/) project, so a running
Lean installation is enough for building and
[contributing](https://provables.github.io/sequencelib/contributing.html). If you are able to
use Lean from VSCode, you are ready to use this project by cloning it and opening the root folder
in the editor.

### Alternative Setup

Alternatively, we also packed a full Lean installation together with the tools needed for
building, linting, indexing, and generating the website, in a [Nix](https://nixos.org/) environment.
It is usable in MacOS and Linux.

All that is needed is a [Nix installation](https://nixos.org/download/). Once `nix` is available,
run the environment with

```shell
nix develop
```

We provide a task runner that can run the most common utilities. Run `task -a` to see all the tasks
available. Some examples are:

* `task build`: builds the project and checks the theorems.
* `task lint`: run the linters.
* `task serve-page`: build the site, index, and docs, and serve it locally.

Most of the tasks are simple invocations of `lake`, but the task manager is useful to ensure all
the dependent tasks run in order and to skip over unnecessary work.

## Authors

* Walter Moreira
* Joe Stubbs

## License

* <a href="https://provables.github.io/sequencelib/">Sequencelib</a> © 2025 by <a href="https://github.com/waltermoreira">Walter Moreira</a> and <a href="https://github.com/joestubbs">Joe Stubbs</a> is licensed under <a href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a> <img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="width: 1em;height:1em;"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="width: 1em;height:1em;"><img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" alt="" style="width: 1em;height:1em;">
* The [OEIS](https://oeis.org) is made available under <a href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a> <img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="width: 1em;height:1em;"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="width: 1em;height:1em;"><img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" alt="" style="width: 1em;height:1em;">
