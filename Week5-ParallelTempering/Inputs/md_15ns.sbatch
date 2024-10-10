#!/bin/bash

#SBATCH --job-name=run-gromacs-15ns    # Job name
#SBATCH --nodes=1                      # Run on a single node
#SBATCH --ntasks-per-node=4            # Number of tasks (CPUs) per node
#SBATCH --mem=8GB                      # Memory per node
#SBATCH --time=48:00:00                # Time limit hrs:min:sec
#SBATCH --output=md_10ns.log           # Standard output and error log

# Load necessary modules
module purge

module avail gromacs
module load gromacs/openmpi/intel/2018.3

# Prepare the input files using grompp
gmx_mpi grompp -f adp_T300.mdp -c adp.gro -p adp.top -o ../Data/md_15ns.tpr

# Run the molecular dynamics simulation without the GPU flag
gmx_mpi mdrun -deffnm md_15ns

# Note: Adjust memory, time, and CPU cores depending on your system requirements.
