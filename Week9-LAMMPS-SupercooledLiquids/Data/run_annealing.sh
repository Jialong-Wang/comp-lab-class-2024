#!/bin/bash
#SBATCH --job-name=KALJ_anneal
#SBATCH --output=anneal_output.log
#SBATCH --error=anneal_error.log
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=16GB
#SBATCH --time=10:00:00

# Load the LAMMPS environment
source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

# Step 1: Create the system
mpirun lmp -var configfile ../Inputs/n360/kalj_n360_create.lmp -var id 1 -in ../Inputs/create_3d_binary.lmp

# Step 2: Annealing (progressively lowering the temperature)
temperatures=(1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475)

for temp in "${temperatures[@]}"
do
    echo "Equilibrating at temperature $temp"

    # Run LAMMPS with the corresponding configuration file for each temperature
    mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T${temp}.lmp -var id 1 -in ../Inputs/anneal_3d_binary.lmp

    echo "Finished equilibration at temperature $temp"
done