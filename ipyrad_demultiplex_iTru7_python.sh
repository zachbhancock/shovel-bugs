#1/bin/bash
#SBATCH 
time=10:00:00   # walltime
nodes=1
ntasks=15
cpus-per-task=1 
mem-per-cpu=10G   # memory per CPU
mail-user=hancockz@umich.edu   # email address
mail-type=BEGIN
mail-type=END
mail-type=FAIL

source activate ipyrad

python run_ipyrad_demultiplex_itru7.py

conda deactivate

cd $SLURM_SUBMIT_DIR

exit 0
~                
