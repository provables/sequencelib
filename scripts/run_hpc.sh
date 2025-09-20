#!/bin/bash

export ALL_OEIS_RESULTS_FILE=$SCRATCH/SequenceLib/oeis_results_all.json
export SOLUTIONS_FILE_PATH=$SCRATCH/SequenceLib/solutions
export GENSEQ_PORT=55222
export ORIGIN=$(get-path)
echo "Using ORIGIN=$ORIGIN"
export TMP=$HOME/sequencelib-project
rsync -r $ORIGIN/ $TMP/sequencelib/ 

/bin/genseq -s -p 55222 > genseq.log 2>&1 &
echo "Started genseq server, now sleeping..."
sleep 60
echo "about to start synthesize..."
/bin/synthesize -s 8000 -e 8100 > p1.log 2>&1 &
#echo "synthesize started in background, script exiting..."
/bin/synthesize -s 8101 -e 8200 > p2.log 2>&1 &
/bin/synthesize -s 8201 -e 8300 > p3.log 2>&1 &
/bin/synthesize -s 8301 -e 8400 > p4.log 2>&1 &
/bin/synthesize -s 8401 -e 8500 > p5.log 2>&1 &
/bin/synthesize -s 8501 -e 8600 > p6.log 2>&1 &
/bin/synthesize -s 8601 -e 8700 > p7.log 2>&1 &
/bin/synthesize -s 8701 -e 8800 > p8.log 2>&1 &
/bin/synthesize -s 8801 -e 8900 > p9.log 2>&1 &
/bin/synthesize -s 8901 -e 9000 > p10.log 2>&1 &
echo "synthesize processes started in background, script exiting..."
