#!/bin/bash
export ALL_OEIS_RESULTS_FILE=$SCRATCH/SequenceLib/oeis_results_all.json
export SOLUTIONS_FILE_PATH=$SCRATCH/SequenceLib/solutions
export GENSEQ_PORT=55222
export ORIGIN=$(get-path)
echo "Using ORIGIN=$ORIGIN"
export TMP=$SCRATCH/SL-hpc-control/sequencelib-source
rsync -r $ORIGIN/ $TMP/
rm -rf $TMP/Sequencelib/Synthetic/*
rm -rf $TMP/.lake

genseq -s -p 55222 > $SCRATCH/SL-hpc-control/genseq.log 2>&1 &
echo "Started genseq server, now sleeping..."
sleep 60
echo "about to start synthesize..."
synthesize -s 0 -e 3000 > $SCRATCH/SL-hpc-control/p1.log 2>&1 &
#echo "synthesize started in background, script exiting..."
synthesize -s 3001 -e 6000 > $SCRATCH/SL-hpc-control/p2.log 2>&1 &
synthesize -s 6001 -e 9000 > $SCRATCH/SL-hpc-control/p3.log 2>&1 &
synthesize -s 9001 -e 12000 > $SCRATCH/SL-hpc-control/p4.log 2>&1 &
synthesize -s 12001 -e 15000 > $SCRATCH/SL-hpc-control/p5.log 2>&1 &
synthesize -s 15001 -e 18000 > $SCRATCH/SL-hpc-control/p6.log 2>&1 &
synthesize -s 18001 -e 21000 > $SCRATCH/SL-hpc-control/p7.log 2>&1 &
synthesize -s 21001 -e 24000 > $SCRATCH/SL-hpc-control/p8.log 2>&1 &
synthesize -s 24001 -e 27000 > $SCRATCH/SL-hpc-control/p9.log 2>&1 &
synthesize -s 27001 -e 30000 > $SCRATCH/SL-hpc-control/p10.log 2>&1 &
echo "synthesize processes started in background, sleeping..."
sleep infinity
