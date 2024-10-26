#!/bin/bash

# Loop over densities from 0.5 to 1.1 (incrementing by 0.1)
for density in $(seq 0.90 0.01 1.00) #seq 0.5 0.1 1.1 for the first task
do
    echo "Running simulation for density: $density"
    
    # Run the LAMMPS simulation for each density, save log files and trajectories
    mpirun -n 1 lmp -var density $density -in Inputs/2dWCA.in -log 1b_Data/log_density_${density}.log
    
    # Move the generated trajectory files (lammpstrj and dcd) to the Trajectories folder
    mv 2dWCA_T0.1_d${density}_N100000.lammpstrj 1b_Trajectories/
    mv 2dWCA_T0.1_d${density}_N100000.dcd 1b_Trajectories/
    
    echo "Simulation for density $density completed"
done
