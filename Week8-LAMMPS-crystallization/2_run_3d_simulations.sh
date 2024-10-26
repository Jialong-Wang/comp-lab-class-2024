#!/bin/bash

# Loop over densities from 0.8 to 1.5 (incrementing by 0.1)
for density in $(seq 0.8 0.1 1.5)
do
    echo "Running 3D WCA simulation for density: $density"
    
    # Run the LAMMPS simulation for each density, save log files and trajectories
    mpirun -n 1 lmp -var density $density -in Inputs/3dWCA.in -log 2_3D_Data/log_density_${density}.log
    
    # Move the generated trajectory files (lammpstrj and dcd) to the 3D Trajectories folder
    mv 3dWCA_T0.1_d${density}_N100000.lammpstrj 2_3D_Trajectories/
    mv 3dWCA_T0.1_d${density}_N100000.dcd 2_3D_Trajectories/
    
    echo "Simulation for density $density completed"
done
