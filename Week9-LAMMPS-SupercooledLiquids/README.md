
Each of the following directories is explained below. Please also refer to the `Assignment.md` from Prof. Hocky's instructions. 

# Setup Section:
Use `source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash` to run the lmp commands.

# Part 1 - Create and Cool Down the System
This simulation creates a 3D Kob-Andersen Lennard-Jones (KALJ) system, then progressively anneals it by lowering the temperature in several steps.

Write a script (`run_annealing.sh`) to create and anneal the system inside `/Data`.
Configure the job to run with 4 tasks per node and 1 CPU per task.

- The initial system is created using:
`mpirun lmp -var configfile ../Inputs/n360/kalj_n360_create.lmp -var id 1 -in ../Inputs/create_3d_binary.lmp`

- Write a loop for progressive annealing:
`mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T<temp>.lmp -var id 1 -in ../Inputs/anneal_3d_binary.lmp` to set in different temperatures.

Use `sbatch run_annealing.sh` to submit it.

Note: Trajectory files were ignored when uploading.

# Part 2 - Production Runs
Use `sbatch run_production.sh` to submit; this script contains the loop for different temperatures.

Note: Trajectory files were ignored when uploading.

# Part 3 - Analyze Runs
Check the Jupyter Notebook `Part3_Analysis.ipynb` inside the `/Analysis` directory.
Check the output figures for each analysis.

I also took a snapshot for T=0.5 called `snapshot_T0.5.png`.
- Load the Topology File: `kalj_T0.5_n360_v300_10000000_1.lammpstrj`
- Load the Trajectory File: Load the corresponding `.unwrap.dcd` trajectory file.
