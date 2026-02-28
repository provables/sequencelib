#!/bin/bash

# Prep:
# - Create a directory `results` in the cwd
# - Add the files `oeis_results_all.json` and `solutions` to the `results` directory

# Run with:
# docker run -it --name synth1 --rm -v $(pwd)/results:/results provables/synthesize

start=`date`
echo "Script is starting at time: $start"

export ALL_OEIS_RESULTS_FILE=/results/oeis_results_all.json
export SOLUTIONS_FILE_PATH=/results/solutions
export GENSEQ_PORT=55222

# get the path to the nix store 
export ORIGIN=$(get-path)

# set a TMP that is writable 
export TMP=/results
mkdir -p $TMP/sequencelib

echo "Starting rsync, using the following vars:"
echo "ORIGIN: $ORIGIN"
echo "TMP: $TMP" 

rsync -r $ORIGIN/ $TMP/


echo "Finished rsync, fixing permissions and removing Synthetic and .lake dirs..."
chmod -R u+w $TMP
rm -rf $TMP/Sequencelib/Synthetic/*
rm -rf $TMP/.lake
echo "Permissions fixed and directories removed, now issuing lake exe cache get..."

cd $TMP
lake exe cache get

echo "Finished lake exe cache get, now starting genseq.."

# start the genseq server and give it time to load
cd $TMP
genseq -p 55222 > genseq.log 2>&1 &
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

# run the synthesize script
synthesize -s 0 -e 10 > p1.log 2>&1  &
echo "synthesize processes started in background, waiting for processes to finish."
while true; do 
  pgrep -f synthesize > /dev/null 
  if [[ $? -eq 1 ]]; then
    break
  else
    sleep 1
  fi  
done

end=`date`
echo "synthesize processes have finished at time: $end"
