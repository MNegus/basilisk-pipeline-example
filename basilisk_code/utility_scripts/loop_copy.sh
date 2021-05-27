#!/bin/bash

# loop_copy.sh
# Bash script to copy a set of Basilisk scripts into a difference directory, 
# altering the parameters file for each.

code_dir=$1 # Directory of the original script
dest_dir=$2 # Destination directory where the scripts are to be copied

# Loop alters the MAXLEVEL parameter for each
for MAXLEVEL in 6 7 8 9 10
do
    # Changes the parameters file
    sed -i "/MAXLEVEL/c\const int MAXLEVEL = $MAXLEVEL; // Maximum refinement level" parameters.h

    # Copies over the code 
    ./code_copy.sh $code_dir $dest_dir max_level_$MAXLEVEL

    # Outputs the copy was successful
    echo Copied over MAXLEVEL = $MAXLEVEL
done