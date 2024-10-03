
# Step 6: Unwrap the Trajectory Using `trjconv`

Before starting, ensure you load the necessary module with the following commands:

`module avail gromacs`
`module load gromacs/openmpi/intel/2023.3`

Note: I used version 2023.3 instead of 2020.4.

Unwrap the trajectory:

`gmx_mpi trjconv -s ../2_IONSINWATER_INPUT/gromacs/step5_5.tpr -f ../2_IONSINWATER_INPUT/gromacs/step5_5.xtc -o unwrapped.xtc -pbc nojump`

- Group selection: Choose **0** for the System.

# Step 7: Calculate the Mean Squared Displacement (MSD) & Step 8: Plot the MSD vs Time

Use the `Step78_Analysis_JWANG.ipynb` Jupyter notebook to calculate and graph the MSD figure.

