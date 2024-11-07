#!/bin/bash
#SBATCH --job-name=KALJ_production
#SBATCH --output=production_output.log
#SBATCH --error=production_error.log
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=16GB
#SBATCH --time=10:00:00

# Load the LAMMPS environment
source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

# Temperatures for production runs
# temperatures=(1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475)
temperatures=(0.5 0.475) # Error so I ran again

for temp in "${temperatures[@]}"
do
    echo "Running production simulation at temperature $temp"

    # Run the production simulation with the production script
    mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T${temp}.lmp -var id 1 -in ../Inputs/production_3d_binary.lmp

    echo "Finished production simulation at temperature $temp"
done
