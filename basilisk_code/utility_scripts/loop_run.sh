#!/bin/bash

# loop_run.sh
# Bash script to copy a set of Basilisk scripts that have been copied somewhere
# using the loop_copy.sh scropt

parent_dir=$1 # Parent directory where all the scripts are
code_name=$2 # Name of the code e.g. droplet_impact

# Loops over different values of MAXLEVEL
for MAXLEVEL in 6 7 8 9 10
do
    echo Starting MAXLEVEL = $MAXLEVEL

    cd $parent_dir/max_level_$MAXLEVEL/code # Moves into directory
    
    ./run_simulation.sh $code_name 4 # Runs code using 4 cores

    echo Finished MAXLEVEL = $MAXLEVEL
done