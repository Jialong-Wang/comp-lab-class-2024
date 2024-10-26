
Each of the following directories is explained below. Please also refer to the `Assignment.md` from Prof. Hocky's instructions. 

# Setup Section:
Inside `0_Setup_Melt`
Request an interactive node:
`srun --nodes=1 --ntasks-per-node=4 --cpus-per-task=1 --mem-per-cpu=1G --time=02:00:00 --pty /bin/bash`, use `source /scratch/work/courses/CHEM-GA-2671-2024fa/software/lammps-gcc-30Oct2022/setup_lammps.bash`, 
and finish all the other setup instructions mentioned in the `Assignment.md`.

Save the ppm files inside `0_Setup_Melt/Figures/ppm_files`, then using `ffmpeg -framerate 24 -i untitled.%05d.ppm -vframes 24 -c:v libx264 -pix_fmt yuv420p LJ_melt_simulation.mp4`, the movie is located inside "Figures" called `LJ_melt_simulation.mp4`.

Additional info if needed in the next sections: `mpirun -np 4 lmp -in in.melt -log simulation.log -var T 300`.

# Section 1: Find the approximate density where these hard WCA disks crystallize

## 1a Test the setup
Inside "1a_Test",
`mpirun -n 1 lmp -var density 0.5 -in ../Inputs/2dWCA.in` (Use 1 for this, specifically since adding more causes a problem).

Then use VMD to visualize:
Load the `.lammpstrj` file, then `.dcd file`, I can clearly verify this is good.

## 1b Running using different densities
Using `./1b_run_2d_simulations.sh` and `chmod +x 1b_run_2d_simulations.sh`, create the following directories:
`mkdir 1b_2D_Trajectories`
`mkdir 1b_2D_Data`
`mkdir 1b_2D_Images`

Then run `./1b_run_2d_simulations.sh`.

Check all the trajectories. I think the crystallization occurs between densities of 0.9 and 1.0.

For 0.9 (Red, Non Crystallized) and 1.0 (Blue, Crystallized), check the following screenshots in `1b_Images`:

Check for the non-crystallized state (density = 0.9):
`density_0.9_non_crystallized.png`.

For the crystallized state (density = 1.0):
`density_1.0_crystallized.png`.

For the comparison of both densities (0.9 and 1.0):
`density_0.9_vs_1.0_comparison.png`.

I ran the simulations again using `(seq 0.90 0.01 1.00)` in the bash file to find the exact density.
Check the 0.95 one: `density_0.95_crystallized_middlept.png`.

# Section 2: 3D WCA
Modify the input script to 3D, as discussed in the `Assignment.md` (variable `dt` equal to 0.005 since I crashed several files when running the modified bash script). 
Then make the following directories: `mkdir 2_3D_Data 2_3D_Images 2_3D_Trajectories`.

Run `2_run_3d_simulations.sh`.

I will check densities 0.9 and 1.0, similar to the 2D simulations.

For the comparison of both densities (0.9, Red, Non Crystallized, and 1.0, Blue, Crystallized):
Check `density_0.9_vs_1.0_comparison_3d.png` inside `2_3D_Images`.

Using `ffmpeg -framerate 384 -i untitled.%05d.ppm -vframes 384 -c:v libx264 -pix_fmt yuv420p d0.9_3d_simulation.mp4`.

For each simulation, I generated a movie. Check:
`d0.9_3d_simulation.mp4` and `d1.0_3d_simulation.mp4` inside `2_3D_Images`.
