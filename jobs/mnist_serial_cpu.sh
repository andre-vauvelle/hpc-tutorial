#!/bin/bash -l
# Batch script to run a serial job under SGE.
# Request ten minutes of wallclock time (format hours:minutes:seconds).
#$ -l h_rt=0:10:0
# Request 1 gigabyte of RAM (must be an integer followed by M, G, or T)
#$ -l mem=1G
# Request 15 gigabyte of TMPDIR space (default is 10 GB - remove if cluster is diskless)
#$ -l tmpfs=15G
# Set the name of the job.
#$ -N mnist_serial_cpu

# Useful to know!
date
hostname

# Set python path and get in the right place!
SOURCE_DIR='~/hpc-tutorial/'
export PYTHONPATH=$PYTHONPATH:$SOURCE_DIR
cd $SOURCE_DIR || exit

# Activate your enviroment!
conda activate hpc-example

# Run your code!
python pl_examples/image_classifier_4_lightning_module.py

# Is actually advisable to save all results in a $TEMPDIR, zip and clear up... https://www.rc.ucl.ac.uk/docs/Example_Jobscripts/#working-directories-and-output

