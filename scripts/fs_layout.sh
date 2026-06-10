#!/usr/bin/env bash

set -euo pipefail

DIR=$1
SELF=$(realpath $0)
DIRS=$(find "$DIR" -mindepth 1 -maxdepth 1 -type d)
FILES=$(find "$DIR" -mindepth 1 -maxdepth 1 -type f)

(for f in $FILES; do
    echo "import Sequencelib.${f%.*}" | tr '/' '.'
done) | sort > "$DIR.lean"

(for f in $DIRS; do
    echo "import Sequencelib.$f" | tr '/' '.'
done) | sort >> "$DIR.lean"

(
    for d in $DIRS; do
        $SELF $d
    done
)