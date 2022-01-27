##!/bin/bash -l
#$ -l tmem=16G
#$ -l h_rt=50:0:0
# Use this flag for a gpu job
#$ -l gpu=true
#$ -S /bin/bash
#$ -j y
#$ -N 
# Useful to redirect logs
#$ -o /home/<ucl-id>/hpc-tutorial/jobs/logs

hostname
date
SOURCE_DIR='/home/<ucl-id>/hpc-tutorial'
export PYTHONPATH=$PYTHONPATH:$SOURCE_DIR
cd $SOURCE_DIR || exit
source /share/apps/source_files/cuda/cuda-10.1.source
conda activate hpc-example


python pl_examples/image_classifier_4_lightning_module.py 
date
```
