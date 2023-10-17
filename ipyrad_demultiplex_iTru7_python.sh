#1/bin/bash
#SBATCH --time=10:00:00   # walltimea
#SBATCH --nodes=1
#SBATCH --ntasks=15
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10G   # memory per CPU
#SBATCH --mail-user=XXXXXXXXX   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

python run_ipyrad_demultiplex_itru7.py

cd $SLURM_SUBMIT_DIR

exit 0
~                
