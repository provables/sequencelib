#!/usr/bin/env python3

import argparse
import json
import os
import shutil
import sys
from pathlib import Path

from pydantic import BaseModel
from fastmcp.cli.install.claude_desktop import get_claude_config_path
from rich import print


class MCPServer(BaseModel):
    """Pydantic model for an MCP server configuration."""
    command: str
    args: list[str]
    cwd: str
    env: dict[str, str]


class MCPConfig(BaseModel):
    """Pydantic model for the full MCP configuration."""
    mcpServers: dict[str, MCPServer]


def create_oeis_mcp_server(genseq_server: str, genseq_port: str) -> MCPServer:
    """Create the OEIS MCP server configuration for this repository."""
    # Get absolute path of current directory
    current_dir = os.path.abspath(os.getcwd())
    
    # Find uv executable
    uv_path = shutil.which("uv")
    if not uv_path:
        print("[red]Error: uv not found in PATH[/red]", file=sys.stderr)
        sys.exit(1)
    
    # Create environment variables
    env_vars = {
        "ALL_OEIS_RESULTS_FILE": os.path.expanduser("~/sequencelib-data/oeis_results_all.json"),
        "SOLUTIONS_FILE_PATH": os.path.expanduser("~/solutions"),
        "OUTPUT_DIR": "",
        "GENSEQ_SERVER": genseq_server,
        "GENSEQ_PORT": genseq_port
    }
    
    return MCPServer(
        command=uv_path,
        args=[
            "--directory",
            current_dir,
            "run",
            "python",
            "-m",
            "scripts.mcp_server",
            "--transport",
            "stdio"
        ],
        cwd=current_dir,
        env=env_vars
    )


def install_mcp_config(server_name: str, server_config: MCPServer):
    """Install MCP server configuration to Claude Desktop."""
    config_dir = get_claude_config_path()
    if not config_dir:
        print(
            "[red]Claude Desktop config directory not found.[/red]\n"
            "[blue]Please ensure Claude Desktop is installed and has been run at least once to initialize its config.[/blue]"
        )
        sys.exit(1)
    
    config_file = config_dir / "claude_desktop_config.json"
    
    # Load existing config or create new one
    if config_file.exists():
        try:
            content = config_file.read_text().strip()
            if content:
                config_data = json.loads(content)
            else:
                config_data = {}
        except json.JSONDecodeError:
            config_data = {}
    else:
        config_data = {}
    
    # Ensure mcpServers section exists
    if "mcpServers" not in config_data:
        config_data["mcpServers"] = {}
    
    # Add or update our server
    config_data["mcpServers"][server_name] = server_config.model_dump()
    
    # Write updated config
    config_file.write_text(json.dumps(config_data, indent=2) + "\n")
    
    print(f"[green]Successfully installed '{server_name}' in Claude Desktop[/green]")
    print(f"Config file: {config_file}")
    return config_file


def print_mcp_config(server_name: str, server_config: MCPServer):
    """Print MCP configuration as JSON."""
    config = MCPConfig(mcpServers={server_name: server_config})
    print(config.model_dump_json(indent=2))


def main():
    parser = argparse.ArgumentParser(description="Generate Claude Desktop MCP configuration")
    parser.add_argument("action", choices=["json", "claude"], 
                        help="Action: 'json' to print config, 'claude' to install in Claude Desktop")
    parser.add_argument("--server-name", default="oeis-mcp",
                        help="MCP server name (default: oeis-mcp)")
    parser.add_argument("--genseq-server", required=True,
                        help="GenSeq server address")
    parser.add_argument("--genseq-port", required=True,
                        help="GenSeq server port")

    args = parser.parse_args()

    # Create the OEIS MCP server configuration
    server_config = create_oeis_mcp_server(args.genseq_server, args.genseq_port)

    # Execute action
    if args.action == "json":
        print_mcp_config(args.server_name, server_config)
    else:  # claude action
        install_mcp_config(args.server_name, server_config)
        print(f"Working directory: {server_config.cwd}")
        print(f"UV path: {server_config.command}")
        print(f"OEIS results file: {server_config.env['ALL_OEIS_RESULTS_FILE']}")
        print(f"GenSeq server: {args.genseq_server}:{args.genseq_port}")


if __name__ == "__main__":
    main()