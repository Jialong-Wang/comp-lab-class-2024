#!/bin/bash
#SBATCH --job-name=stateB_md   # Job name
#SBATCH --output=stateB_md.out # Standard output and error log
#SBATCH --ntasks=1             # Number of tasks
#SBATCH --time=02:00:00        # Time limit hrs:min:sec
#SBATCH --mem=2G               # Memory limit
#SBATCH --cpus-per-task=4      # Number of CPUs per task
#SBATCH --partition=standard   # Partition name

# Load GROMACS module
module load gromacs/2019.6

# Run the GROMACS simulation for state B
gmx_mpi mdrun -s ../../Inputs/topolB.tpr -nsteps 10000000

