#!/bin/bash

# Run with:
# docker run -it --rm -v /home/jstubbs/oeis_results_all.json:/data/oeis_results_all.json -v /home/jstubbs/gits/lean4/oeis-synthesis/src/results/solutions:/data/solutions --entrypoint=bash jstubbs/synthesize

export ALL_OEIS_RESULTS_FILE=/data/oeis_results_all.json
export SOLUTIONS_FILE_PATH=/data/solutions
export GENSEQ_PORT=55222

# get the path to the nix store 
export ORIGIN=$(get-path)

# set a TMP that is writable 
export TMP=/root/results
mkdir -p $TMP/sequencelib
rsync -r $ORIGIN/ $TMP/sequencelib/

# start the genseq server and give it time to load
cd $TMP
genseq -p 55222 > genseq.log 2>&1 &
sleep 20

# run the synthesize script
synthesize -s 0 -e 10 > p1.log 2>&1  &
echo "synthesize started in background, script exiting..."



