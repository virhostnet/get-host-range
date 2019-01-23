#!/bin/bash
#SBATCH --job-name=ghr
#SBATCH --partition=normal
#SBATCH --time=001:00:00
#SBATCH -e /beegfs/data/navratil/data/biomedomix/tmp/ghr_${PBS_JOBID}.err
#SBATCH -o /beegfs/data/navratil/data/biomedomix/tmp/ghr_${PBS_JOBID}.ou

file=`basename $path`
python /beegfs/home/navratil/projects/git/get-host-range/gb2hr.py $path > /beegfs/data/navratil/data/biomedomix/tmp/$file.gb2hr