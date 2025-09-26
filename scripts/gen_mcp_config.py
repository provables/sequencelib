#!/usr/bin/env python3

import argparse
import json
import os
import shutil
import sys
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description="Generate Claude Desktop MCP configuration")
    parser.add_argument("--genseq-server", required=True,
                        help="GenSeq server address")
    parser.add_argument("--genseq-port", required=True,
                        help="GenSeq server port")

    args = parser.parse_args()

    # Get absolute path of current directory
    current_dir = os.path.abspath(os.getcwd())

    # Find uv executable
    uv_path = shutil.which("uv")
    if not uv_path:
        print("Error: uv not found in PATH", file=sys.stderr)
        sys.exit(1)

    # Expand user path for OEIS results file
    oeis_results_file = os.path.expanduser("~/sequencelib-data/oeis_results_all.json")

    config = {
        "mcpServers": {
            "oeis-mcp": {
                "command": uv_path,
                "args": [
                    "--directory",
                    current_dir,
                    "run",
                    "python",
                    "-m",
                    "scripts.mcp_server",
                    "--transport",
                    "stdio"
                ],
                "cwd": current_dir,
                "env": {
                    "ALL_OEIS_RESULTS_FILE": oeis_results_file,
                    "GENSEQ_SERVER": args.genseq_server,
                    "GENSEQ_PORT": args.genseq_port
                }
            }
        }
    }

    print(json.dumps(config, indent=2))


if __name__ == "__main__":
    main()