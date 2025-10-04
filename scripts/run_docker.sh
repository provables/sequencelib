#!/bin/bash

# Run with:
# docker run -it --name synth1 --rm -v $(pwd)/results:/results provables/synthesize

start=`date`
echo "Script is starting at time: $start"

export OUTPUT_DIR=/results/solutions
# run the synthesize script
synthesize-bundled -s 0 -e 15000 -t 60 > p1.log 2>&1  &
synthesize-bundled -s 15001 -e 30000 -t 60 > p2.log 2>&1  &

echo "synthesize processes started in background, waiting for processes to finish."
while true; do 
  pgrep -f synthesize-bundled > /dev/null 
  if [[ $? -eq 1 ]]; then
    break
  else
    sleep 1
  fi  
done

end=`date`
echo "synthesize processes have finished at time: $end"
