#!/bin/bash

#SBATCH --job-name=water_md_sim        # Job name
#SBATCH --output=water_md_sim.log      # Standard output and error log
#SBATCH --nodes=1                      # Run on a single node
#SBATCH --ntasks-per-node=12           # Number of tasks (CPUs) per node
#SBATCH --cpus-per-task=1              # Number of CPUs per task
#SBATCH --time=06:00:00                # Time limit hrs:min:sec
#SBATCH --mem=20GB                     # Memory limit

module purge
module load cp2k/openmpi/intel/20201212

# Run the CP2K simulation
mpirun -np 12 cp2k.popt -i water.inp -o water_md_sim.log
