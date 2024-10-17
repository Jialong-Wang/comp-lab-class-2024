# Week 5 Project

Each of the following directories is explained below. Please also refer to the `Assignment.md` from Prof. Hocky's instructions.

## Inputs

First, go inside this directory and use the sbatch file I wrote to run the MD for Step 1. Put the result into the Data directory.

Then, for Step 4, create the following: `mkdir T300 T400 T600`

For each temperature, run `gmx_mpi grompp -f adp_300.mdp -c ../adp.gro -p ../adp.top -o adp_300.tpr` inside each directory for the respective temperature.

Next, I created another inputs directory called `Step4_Inputs` inside `Inputs`. Begin working there for the parallel tempering.

After submitting the sbatch job and receiving the logs for each one, run `gmx_mpi energy -f ../T300/adp_exchange3temps.edr -o ../T300/potential_energy.xvg`, for T400 and T600 as well (Choose Option 8).

## Data

The output files go here. For the paallel tempering results, check the `.xtc` files for different temperatures inside `Inputs/T300/`, `T400/`, or `T600/`. (For clarity, I did not move those files here.)

## Analysis

Use Jupyter Notebook to:
- Step 2: Calculate and plot Phi and Psi dihedral angles.
- Step 3: Create a Free Energy Surface (FES) plot.
- Step 4: Analyze parallel tempering.

## Figures

Check the corresponding output figures from the analysis, as well as the screenshot I took for the trajectory in VMD. I created a nice picture of alanine dipeptide titled "VMD_SCREENSHOT" (Topology: `md_15ns.gro`; Trajectory: `md_15ns.xtc`).
