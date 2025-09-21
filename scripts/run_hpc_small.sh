#!/bin/bash

echo "Starting script, running as: $(id)"
export CONTROL=$SCRATCH/SL-hpc-control

export ALL_OEIS_RESULTS_FILE=$CONTROL/oeis_results_all.json
export SOLUTIONS_FILE_PATH=$CONTROL/solutions
export GENSEQ_PORT=55222
export ORIGIN=$(get-path)
echo "Using ORIGIN=$ORIGIN"
export TMP=$CONTROL/sequencelib-source
rsync -r $ORIGIN/ $TMP/ 
chmod -R u+w $TMP
rm -rf $TMP/Sequencelib/Synthetic/*
rm -rf $TMP/.lake

cd $TMP
lake exe cache get

genseq -s -p 55222 > $CONTROL/genseq.log 2>&1 &
echo "Started genseq server, now sleeping..."
sleep 60
echo "about to start synthesize..."

export HOME=$(mktemp -d)
echo "Using a CONTROL of: $CONTROL"
echo "Using a HOME of: $HOME"
echo "Using a TMP of: $TMP"
echo "Using this git: $(which git)"
echo "Git version: $(git --version)"

echo "Listing of TMP: $(ls -la $TMP)"

synthesize -s 0 -e 30 > $CONTROL/p1.log 2>&1 &
#echo "synthesize started in background, script exiting..."
synthesize -s 31 -e 60 > $CONTROL/p2.log 2>&1 &
synthesize -s 61 -e 90 > $CONTROL/p3.log 2>&1 &
synthesize -s 91 -e 120 > $CONTROL/p4.log 2>&1 &
synthesize -s 121 -e 150 > $CONTROL/p5.log 2>&1 &
synthesize -s 151 -e 180 > $CONTROL/p6.log 2>&1 &
synthesize -s 181 -e 210 > $CONTROL/p7.log 2>&1 &
synthesize -s 211 -e 240 > $CONTROL/p8.log 2>&1 &
synthesize -s 241 -e 270 > $CONTROL/p9.log 2>&1 &
synthesize -s 271 -e 300 > $CONTROL/p10.log 2>&1 &
echo "synthesize processes started in background, sleeping..."
sleep infinity 
