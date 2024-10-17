#!/bin/bash

#SBATCH --job-name=parallel_tempering    # Job name
#SBATCH --output=parallel_tempering.log  # Standard output and error log
#SBATCH --nodes=1                        # Run on a single node
#SBATCH --ntasks=3                       # Number of tasks (1 task per directory)
#SBATCH --time=12:00:00                  # Time limit (adjust as needed)
#SBATCH --mem=2GB                        # Memory limit per task
#SBATCH --ntasks-per-node=3              # 3 tasks per node

module purge
module load gromacs/openmpi/intel/2018.3

# Run a parallel tempering simulation for 5 ns
mpirun -np 3 gmx_mpi mdrun -s adp -multidir ../T300/ ../T400/ ../T600/ -deffnm adp_exchange3temps -replex 500
