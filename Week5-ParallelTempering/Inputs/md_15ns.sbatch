#!/bin/bash

#SBATCH --job-name=alanine_md_15ns    # Job name
#SBATCH --output=md_15ns.log          # Standard output and error log
#SBATCH --nodes=1                      # Run on a single node
#SBATCH --ntasks-per-node=4            # Number of tasks (CPUs) per node
#SBATCH --time=06:00:00               # Time limit hrs:min:sec (1 hour)
#SBATCH --mem=2GB                     # Memory limit

module purge
module avail gromacs
module load gromacs/openmpi/intel/2018.3

# Step 1: Preprocess to generate .tpr file
gmx_mpi grompp -f adp_T300.mdp -c adp.gro -p adp.top -o md_15ns.tpr

# Step 2: Run the MD simulation
gmx_mpi mdrun -deffnm md_15ns
