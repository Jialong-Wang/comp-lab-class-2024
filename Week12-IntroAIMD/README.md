
Each of the following directories is explained below. Please also refer to the `Assignment.md` from Prof. Hocky's instructions. 

# Part 1
Create the `Runs/Water`. Modify the `water.inp`:
- Set `WALLTIME` to 21600 seconds.
- For `STEPS`, use 1 ps / 0.5 fs = 2000.

Use the `run_water.sbatch` script I created to run the simulation.

# Part 2
Create the `Runs/Proton`. Modify the `proton.inp` and `run_proton.sbatch` according to the instructions.
For `proton.xyz`, I used VMD to add one extra proton.

# Part 3 Analysis
Check `Part3_Analysis.ipynb` inside the `Analysis` directory. 

In the `/Figures` directory:
- `proton.png`: Visualization of the proton simulation. The dynamic bonding is shown in yellow.
- `proton_hydronium.png`: Visualization highlighting the hydronium in the proton simulation.
