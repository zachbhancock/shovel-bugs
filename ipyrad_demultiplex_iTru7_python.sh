#!/bin/bash
#SBATCH --time=10:00:00   # walltimea
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10G   # memory per CPU
#SBATCH --mail-user=hancockz@umich.edu   # email address
#SBATCH --mail-type=BEGIN,END,FAIL

source activate ipyrad

python run_ipyrad_demultiplex_iTru7.py

conda deactivate

exit 0
~                
