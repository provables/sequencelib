#!/usr/bin/env sh

echo '{"path": "FindTheorems.lean"}' | lake exe repl | jq -r '.messages[0].data'