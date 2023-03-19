#!/bin/sh                                                                       
#SBATCH -N 1      # nodes requested                                             
#SBATCH -n 1      # tasks requested                                             
#SBATCH --partition=Teach-LongJobs                                              
#SBATCH --gres=gpu:1                                                            
#SBATCH --mem=12000  # memory in Mb                                             
#SBATCH --time=0-08:00:00                                                       
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/

# Activate the relevant virtual environment:                                    
python3 colorization.py

