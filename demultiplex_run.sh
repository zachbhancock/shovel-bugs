#!/bin/bash
#SBATCH --time=10:00:00   # walltimea
#SBATCH --account=bradburd1
#SBATCH --nodes=1
#SBATCH --ntasks=15
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=5G   # memory per CPU
#SBATCH --mail-user=hancockz@umich.edu   # email address
#SBATCH --mail-type=BEGIN,END,FAIL

source activate ipyrad

ipyrad -p params-newdata.txt -s 1

conda deactivate

exit 0
~      