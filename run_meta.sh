#!/usr/bin/env sh

set -euo pipefail
echo '{"path": "GetOEISInfo.lean"}' | lake exe repl | jq -r '.messages[0].data'