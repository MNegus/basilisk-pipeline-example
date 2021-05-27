# basilisk-pipeline-example
An example data pipeline for running and analysising Basilisk scripts. 

## Instructions
1. Go into basilisk_code/utility scripts and edit the parameters.h file to your 
desired quantitites
2. Run the loop_copy.sh script to copy the code to an external directory, 
varying e.g. the max level
3. Run the loop_run.sh script to run the scripts. This may take a while, so you
may instead like to use nohup to run in the background 
(i.e. nohup ./loop_run.sh)
4. Once the code has been run, you can conduct data analysis using MATLAB. The
example script plots the pressure for all the cases. Remember to edit the 
parent_dir variable to suit where your data is stored 

