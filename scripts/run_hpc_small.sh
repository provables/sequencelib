#!/bin/bash

echo "Starting script, running as: $(id)"
export TMP=`mktemp -d`
echo "Using TMP=$TMP"
export DATA_ROOT=$SCRATCH/SL-hpc-control
mkdir -p $TMP/SL-hpc-control/sequencelib-source
export CONTROL=$TMP/SL-hpc-control
echo "Using CONTROL=$CONTROL"

export ALL_OEIS_RESULTS_FILE=$DATA_ROOT/oeis_results_all.json
export SOLUTIONS_FILE_PATH=$DATA_ROOT/solutions
export GENSEQ_PORT=55222
export ORIGIN=$(get-path)
echo "Using ORIGIN=$ORIGIN"
export TMP=$CONTROL/sequencelib-source

echo "Starting rsync..."
rsync -r $ORIGIN/ $TMP/ 

echo "Finished rsync, fixing permissions and removing Synthetic and .lake dirs..."
chmod -R u+w $TMP
rm -rf $TMP/Sequencelib/Synthetic/*
rm -rf $TMP/.lake
echo "Permissions fixed and directories removed, now issuing lake exe cache get..."

cd $TMP
lake exe cache get

"Finished lake exe cache get, now starting genseq.."

genseq -s -p 55222 > $CONTROL/genseq.log 2>&1 &
echo "Started genseq server, now polling with nc to wait for server to be ready..."
while true; do 
  nc -z -w1 localhost 55222 >/dev/null 
  if [[ $? -eq 0 ]]; then 
    break
  else
    sleep 1
  fi 
done
echo "genseq should be listening; about to start synthesize..."

echo "Using a CONTROL of: $CONTROL"
echo "Using a HOME of: $HOME"
echo "Using a TMP of: $TMP"
echo "Using this git: $(which git)"
echo "Git version: $(git --version)"

echo "Listing of TMP: $(ls -la $TMP)"

synthesize -s 0 -e 3 > $CONTROL/p1.log 2>&1 &
#echo "synthesize started in background, script exiting..."
synthesize -s 3 -e 6 > $CONTROL/p2.log 2>&1 &
synthesize -s 6 -e 9 > $CONTROL/p3.log 2>&1 &
#synthesize -s 91 -e 120 > $CONTROL/p4.log 2>&1 &
#synthesize -s 121 -e 150 > $CONTROL/p5.log 2>&1 &
#synthesize -s 151 -e 180 > $CONTROL/p6.log 2>&1 &
#synthesize -s 181 -e 210 > $CONTROL/p7.log 2>&1 &
#synthesize -s 211 -e 240 > $CONTROL/p8.log 2>&1 &
#synthesize -s 241 -e 270 > $CONTROL/p9.log 2>&1 &
#synthesize -s 271 -e 300 > $CONTROL/p10.log 2>&1 &

echo "synthesize processes started in background, waiting for processes to finish."
while true; do
  pgrep -f synthesize > /dev/null
  if [[ $? -eq 1 ]]; then
    break
  else
    sleep 1
  fi
done

echo "synthesize processes have finished"

# copy the Synthetic directory with time-stampe
now=`date +%s`
echo "Copying results from $TMP/Sequencelib/Synthetic TO $HOME/sequencelib/Synthetic-$now"
mkdir -p $HOME/sequencelib/Synthetic-$now
rsync -avx $TMP/Sequencelib/Synthetic $HOME/sequencelib/Synthetic-$now

echo "Copy complete, script exiting!"
