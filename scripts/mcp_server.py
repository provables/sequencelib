#!/usr/bin/env python3
"""
MCP Server for OEIS Integration

Provides tools for:
1. Getting pretty-printed OEIS sequence data
2. Validating Lean sequence definitions against OEIS data
"""

import argparse
import json
import threading
import os
import sys
import time
from pathlib import Path
from typing import Dict, Any, Optional, List
from jinja2 import Environment, FileSystemLoader

import fastmcp
from pydantic import BaseModel, Field

# Add the scripts directory to Python path for imports
script_dir = Path(__file__).parent
sys.path.insert(0, str(script_dir))

# Import local modules
from synthesize import get_genseq_socket, call_genseq_for_lean_eval

SEQUENCE_LIB_ROOT = script_dir.parent.resolve()
# Default output directory for MCP artifacts; can be overridden via env OUTPUT_DIR
DEFAULT_OUTPUT_DIR = os.path.join(SEQUENCE_LIB_ROOT, "Sequencelib/MCPSynthetic")
OUTPUT_DIR = os.environ.get("OUTPUT_DIR", None) or DEFAULT_OUTPUT_DIR
AUTHORS = "MCP Validation Bot"


# Pydantic Models
class OEISSequence(BaseModel):
    """Raw OEIS sequence data from the database."""
    values: List[int] = Field(default_factory=list, description="Sequence values")
    desc: str = Field(default="", description="Sequence description")
    offset: str = Field(default="0", description="Sequence offset as string")
    mathematica: bool = Field(default=False, description="Has Mathematica code")


class OEISDataResponse(BaseModel):
    """Response model for OEIS sequence data queries."""
    sequence_id: str = Field(description="OEIS sequence identifier")
    name: str = Field(description="Short sequence name")
    description: str = Field(description="Full sequence description")
    data: List[int] = Field(default_factory=list, description="Sequence values")
    offset: int = Field(default=0, description="Sequence offset")
    has_mathematica: bool = Field(default=False, description="Has Mathematica implementation")
    count: int = Field(default=0, description="Number of values")
    success: bool = Field(description="Whether the query was successful")


class OEISErrorResponse(BaseModel):
    """Error response model for OEIS sequence queries."""
    sequence_id: str = Field(description="OEIS sequence identifier")
    error: str = Field(description="Error message")
    success: bool = Field(default=False, description="Always False for errors")


class OEISReference(BaseModel):
    """Reference information for OEIS sequence validation."""
    sequence_id: str = Field(description="OEIS sequence identifier")
    name: str = Field(description="Sequence name")
    tested_values: int = Field(description="Number of values tested")
    offset: int = Field(description="Sequence offset")


class ValidationSuccessResponse(BaseModel):
    """Success response model for Lean sequence validation."""
    validation_result: str = Field(description="Validation result: 'passed' or 'failed'")
    lean_code: str = Field(description="The Lean code that was validated")
    oeis_reference: OEISReference = Field(description="Reference OEIS sequence info")
    evaluation_success: bool = Field(description="Whether evaluation succeeded")
    message: str = Field(description="Human-readable validation message")
    success: bool = Field(default=True, description="Always True for successful validations")


class ValidationErrorResponse(BaseModel):
    """Error response model for Lean sequence validation."""
    validation_result: str = Field(description="Always 'error' for error responses")
    error: str = Field(description="Error message")
    oeis_id: str = Field(description="OEIS sequence identifier")
    success: bool = Field(default=False, description="Always False for errors")


class OEISDataManager:
    """Manages OEIS data loading and caching with proper encapsulation."""

    def __init__(self) -> None:
        """Initialize the data manager with empty cache and load state."""
        # Raw JSON data loaded from disk; we lazily materialize models per-request
        self._data_raw: Optional[Dict[str, Dict[str, Any]]] = None
        self._results_file: str = os.getenv(
            "ALL_OEIS_RESULTS_FILE",
            os.path.expanduser("~/sequencelib-data/oeis_results_all.json")
        )
        self._load_event = threading.Event()
        self._loading_lock = threading.Lock()
        self._loading_in_progress = False

    def load_data(self) -> Dict[str, OEISSequence]:
        """Load OEIS data synchronously. Sets readiness when finished."""
        if self._data_raw is not None:
            # Already loaded, ensure event is set
            self._load_event.set()
            # Return a lightweight view mapping to placeholder models on demand
            return {}

        # Only one loader at a time
        with self._loading_lock:
            if self._data_raw is not None:
                self._load_event.set()
                return {}
            if self._loading_in_progress:
                # Another thread is loading; wait until ready
                self._load_event.wait()
                return {}

            # Start loading
            self._loading_in_progress = True
            self._load_event.clear()

        print(f"Loading OEIS data from {self._results_file}...", file=sys.stderr)
        start_time = time.time()

        try:
            with open(self._results_file, 'r', encoding='utf-8') as f:
                raw_data: Dict[str, Dict[str, Any]] = json.load(f)

            load_time = time.time() - start_time
            print(f"✓ Loaded index of {len(raw_data)} sequences in {load_time:.2f}s", file=sys.stderr)
            # Store raw data only; validation happens per-request to avoid long GIL holds here
            self._data_raw = raw_data
            return {}

        except FileNotFoundError:
            print(f"⚠ Warning: OEIS data file not found at {self._results_file}", file=sys.stderr)
            self._data_raw = {}
            return {}
        except json.JSONDecodeError as e:
            print(f"✗ Error: Invalid JSON in OEIS data file: {e}", file=sys.stderr)
            self._data_raw = {}
            return {}
        finally:
            self._loading_in_progress = False
            self._load_event.set()

    def get_sequence(self, sequence_id: str) -> Optional[OEISSequence]:
        """Get a specific sequence by ID if loaded; otherwise None."""
        if not self.is_ready():
            return None
        assert self._data_raw is not None
        raw = self._data_raw.get(sequence_id)
        if raw is None:
            return None
        try:
            return OEISSequence(**raw)
        except Exception as e:
            print(f"Warning: Failed to parse sequence {sequence_id}: {e}", file=sys.stderr)
            return None

    def is_loaded(self) -> bool:
        """Check if data object exists (even if empty)."""
        return self._data_raw is not None

    def is_ready(self) -> bool:
        """Check if data loading has completed (successfully or with empty result)."""
        return self._load_event.is_set()

    def get_sequence_count(self) -> int:
        """Get the total number of loaded sequences (0 if not ready)."""
        if not self.is_ready():
            return 0
        assert self._data_raw is not None
        return len(self._data_raw)

    def start_background_load(self) -> None:
        """Kick off background data loading if not already ready/loading."""
        if self.is_ready() or self._loading_in_progress:
            return

        def _loader() -> None:
            try:
                self.load_data()
            except Exception as e:
                # Any exceptions are already printed in load_data; keep server running
                print(f"Background load error: {e}", file=sys.stderr)

        t = threading.Thread(target=_loader, name="OEISDataLoader", daemon=True)
        t.start()


# Create global data manager instance (singleton pattern)
data_manager = OEISDataManager()

# Create MCP server
server = fastmcp.FastMCP("oeis-mcp")


def _get_oeis_data_impl(sequence_id: str) -> OEISDataResponse | OEISErrorResponse:
    """Internal implementation for fetching OEIS data without tool wrapping."""
    try:
        if not data_manager.is_ready():
            return OEISErrorResponse(sequence_id=sequence_id, error="Dataloading is not complete")
        seq_data = data_manager.get_sequence(sequence_id)
        if seq_data:
            description = seq_data.desc or "No description available"
            name = description.split('\n', maxsplit=1)[0] if description else "Unknown sequence"
            return OEISDataResponse(
                sequence_id=sequence_id,
                name=name,
                description=description,
                data=seq_data.values,
                offset=int(seq_data.offset),
                has_mathematica=seq_data.mathematica,
                count=len(seq_data.values),
                success=True,
            )
        else:
            return OEISErrorResponse(
                sequence_id=sequence_id,
                error=f"Sequence {sequence_id} not found in OEIS database",
            )
    except Exception as e:
        return OEISErrorResponse(sequence_id=sequence_id, error=f"Failed to retrieve OEIS data: {str(e)}")


@server.tool()
def get_oeis_data(sequence_id: str) -> OEISDataResponse | OEISErrorResponse:
    """Get pretty-printed OEIS data for a specific sequence (tool wrapper)."""
    return _get_oeis_data_impl(sequence_id)


def _write_validation_lean(
    oeis_id: str,
    offset: int,
    lean_source: str,
    max_index: Optional[int],
    success: bool,
) -> None:
    """Render and write a Lean file using the same template mechanism as synthesize.py.

    - On success: writes `<OUTPUT_DIR>/<OEIS>.lean`
    - On failure: writes `<OUTPUT_DIR>/<OEIS>.lean.FAILED`
    """
    try:
        Path(OUTPUT_DIR).mkdir(parents=True, exist_ok=True)
        # Render using the same template as synthesize.py (scripts/seq.j2)
        env = Environment(loader=FileSystemLoader(str(script_dir)), trim_blocks=True)
        template = env.get_template("seq.j2")
        context: Dict[str, Any] = {
            "sequece_tag": oeis_id,  # template key is 'sequece_tag'
            "sequence_name": oeis_id,
            "sequence_offset": str(offset),
            "authors": AUTHORS,
            "sequence_description": None,
            "source": lean_source,
            "max_index": str(max_index) if max_index is not None else None,
        }
        rendered = template.render(**context)
        out_path = Path(OUTPUT_DIR) / f"{oeis_id}.lean"
        if not success:
            out_path = Path(str(out_path) + ".FAILED")
        with open(out_path, "w", encoding="utf-8") as f:
            f.write(rendered)
    except Exception as e:
        print(f"Warning: Failed to write Lean artifact: {e}", file=sys.stderr)


@server.tool()
def validate_lean_sequence(lean_code: str, oeis_id: str) -> ValidationSuccessResponse | ValidationErrorResponse:
    """
    Submit a Lean sequence definition to validate against OEIS data.

    Args:
        lean_code: Lean function definition as string
        oeis_id: OEIS sequence identifier to validate against (e.g., "A000001")

    Returns:
        ValidationSuccessResponse on success or ValidationErrorResponse on error
    """
    try:
        # Ensure data loading is complete
        if not data_manager.is_ready():
            return ValidationErrorResponse(
                validation_result="error",
                error="Dataloading is not complete",
                oeis_id=oeis_id
            )
        # Get reference OEIS data using internal implementation to avoid calling a tool
        oeis_response = _get_oeis_data_impl(oeis_id)

        if isinstance(oeis_response, OEISErrorResponse):
            return ValidationErrorResponse(
                validation_result="failed",
                error=f"Could not retrieve OEIS data: {oeis_response.error}",
                oeis_id=oeis_id
            )

        # Extract values and offset from OEIS data
        values = oeis_response.data
        offset = oeis_response.offset
        
        if not values:
            return ValidationErrorResponse(
                validation_result="failed",
                error="No values found in OEIS data",
                oeis_id=oeis_id
            )

        # Prepare indexes for validation (starting from offset)
        indexes = list(range(offset, offset + len(values)))

        # Connect to genseq server for Lean evaluation
        try:
            socket = get_genseq_socket()
            
            # Use existing evaluation function
            eval_result = call_genseq_for_lean_eval(socket, lean_code, indexes, values)
            socket.close()

            result = ValidationSuccessResponse(
                validation_result="passed" if eval_result else "failed",
                lean_code=lean_code,
                oeis_reference=OEISReference(
                    sequence_id=oeis_id,
                    name=oeis_response.name,
                    tested_values=len(values),
                    offset=offset
                ),
                evaluation_success=eval_result,
                message=("Lean code matches OEIS values" if eval_result 
                        else "Lean code does not match OEIS values")
            )
            # Persist Lean artifact (.lean on success, .lean.FAILED on mismatch)
            _write_validation_lean(
                oeis_id=oeis_id,
                offset=offset,
                lean_source=lean_code,
                max_index=len(values),
                success=bool(eval_result),
            )
            return result

        except Exception as genseq_error:
            err_type = genseq_error.__class__.__name__
            err_msg = str(genseq_error)
            if not err_msg:
                err_msg = "no details (peer may have closed the connection)"
            resp = ValidationErrorResponse(
                validation_result="error",
                error=f"Genseq server error: {err_type}: {err_msg}",
                oeis_id=oeis_id
            )
            _write_validation_lean(
                oeis_id=oeis_id,
                offset=offset,
                lean_source=lean_code,
                max_index=len(values),
                success=False,
            )
            return resp

    except Exception as e:
        err_type = e.__class__.__name__
        err_msg = str(e)
        resp = ValidationErrorResponse(
            validation_result="error",
            error=f"Validation failed: {err_type}: {err_msg}",
            oeis_id=oeis_id
        )
        _write_validation_lean(
            oeis_id=oeis_id,
            offset=0,
            lean_source=lean_code,
            max_index=None,
            success=False,
        )
        return resp


@server.tool()
def ready() -> Dict[str, bool]:
    """Report whether the dataloading is complete."""
    return {"ready": data_manager.is_ready()}


def initialize_server() -> bool:
    """
    Initialize server by loading data and testing functionality.
    
    Returns:
        True if initialization was successful, False otherwise
    """
    success = True
    
    try:
        # Start OEIS data loading in background
        print("Initializing OEIS data (background load)...", file=sys.stderr)
        data_manager.start_background_load()
        print("… Data is loading in the background. Use ready() to check.", file=sys.stderr)

        # Test genseq server connection asynchronously to avoid blocking startup
        def _test_genseq() -> None:
            try:
                sock = get_genseq_socket()
                sock.close()
                print("✓ Genseq server connection successful", file=sys.stderr)
            except Exception as e:
                print(f"⚠ Could not connect to genseq server: {e}", file=sys.stderr)
                print("  Lean validation functionality will be limited", file=sys.stderr)

        threading.Thread(target=_test_genseq, name="GenseqProbe", daemon=True).start()

    except Exception as e:
        print(f"✗ Server initialization failed: {e}", file=sys.stderr)
        success = False
    
    return success


def main() -> None:
    """Start the MCP server with specified transport."""
    parser = argparse.ArgumentParser(description="OEIS MCP Server")
    parser.add_argument(
        "--transport", 
        choices=["stdio", "sse", "streamable-http"], 
        default="stdio", 
        help="Transport method (default: stdio)"
    )
    parser.add_argument(
        "--port", 
        type=int, 
        default=3000, 
        help="HTTP port for SSE transport (default: 3000)"
    )
    parser.add_argument(
        "--host",
        default="localhost",
        help="Host to bind to for SSE transport (default: localhost)"
    )

    args = parser.parse_args()

    # Print startup information
    if args.transport == "stdio":
        print("Starting OEIS MCP Server with STDIO transport", file=sys.stderr)
    elif args.transport == "streamable-http":
        print(f"Starting OEIS MCP Server with Streamable HTTP on {args.host}:{args.port}", file=sys.stderr)
    else:
        print(f"Starting OEIS MCP Server with SSE on {args.host}:{args.port}", file=sys.stderr)
    
    print("Available tools:", file=sys.stderr)
    print("  - get_oeis_data: Get OEIS sequence information", file=sys.stderr)
    print("  - validate_lean_sequence: Validate Lean code against OEIS data", file=sys.stderr)

    # Initialize server (start background data load)
    if not initialize_server():
        print("⚠ Server started with limited functionality", file=sys.stderr)
    else:
        print("✓ Server initialization started (background load)", file=sys.stderr)

    # Start server with specified transport
    if args.transport == "stdio":
        server.run(transport="stdio")
    elif args.transport == "streamable-http":
        server.run(transport="streamable-http", host=args.host, port=args.port)
    else:
        server.run(transport="sse", host=args.host, port=args.port)


if __name__ == "__main__":
    main()
