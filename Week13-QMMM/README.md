
Each of the following directories is explained below. Please also refer to the `Assignment.md` from Prof. Hocky's instructions. 

# Part 1
File type for `Inputs/complex.prmtop`: AMBER7 Parm;
then file type for `Inputs/complex.inpcrd`: AMBER7 Coordinates with Periodic Box.

I generated the figure (screenshot) inside `/Figures/Part1_topology.png` on my local machine using VMD since I prefer to perform VMD tasks locally. However, as required by the `Assignment.md`, I created a VMD script with the help of ChatGPT. Please check `/Analysis/Part1_viz_topology.vmd.ipynb` and `/Analysis/viz_topology.vmd`. Ideally, you can use the command `vmd -e Analysis/viz_topology.vmd` to run the script, or simply modify the representations in the local software directly.

# Part 2
Check `/Analysis/Part2_Equilibration.ipynb` for the script and `/Figures/Part2_potential_energy_vs_time.png` for the figure.

# Part 3
## QM Atoms
`index 5668 5669 5670 5682 5685 5686 5663 5666 5667 5671 5673 5675 5676 5678 5680 5684 5664 5665 5672 5674 5677 5679 5681 5683` in representations. I generated another plot called `/Figures/Part3_topology_Highlighted.png` (highlighted in yellow).

## Other Analysis
Check `/Analysis/Part3_QMMM.ipynb` for the script and `/Figures/Part3_potential_energy_vs_time.png` & `Part3_reaction_coordinate_vs_time.png` for the figures.

# Part 4
Check `/Analysis/Part4_QMMM_metadynamics.ipynb` for the script and `/Figures/Part4_reaction_coordinate_vs_time.png` for Steps 1 to 4.

## Step 5 Visualization
Still inside the Jupyter notebook, I unzipped the files and added the VMD script into it; however, I preferred to perform this on the local machine.

I downloaded `complex_LJ_mod.prmtop` and other `.xyz` files. Adjust `50185` in `.xyz` files to match with the trajectory file. 
Again, load it into VMD. I used the following representations:
- `not protein and not water and not ions` (ligand, with dynamic bonds).
- `protein` (protein, with New Cartoon representation).
- `protein and within 5 of (not protein and not water and not ions)` (sidechains near ligand, Licorice, transparent).

Save the first snapshot and the last snapshot as `Part4_before_reaction.png` & `Part4_after_reaction.png`, respectively.

I used VMD Movie Maker to create the snapshots (then uploaded them to `Figures/Part4_Movie_Snapshots` directory). On the HPC, I used PPM frames with the following commands:

`module avail ffmpeg`
`module load ffmpeg/4.2.4`
`ffmpeg -framerate 30 -i untitled.%05d.ppm -c:v libx264 -pix_fmt yuv420p ../Part4_reaction_movie.mp4`

Check `Part4_reaction_movie.mp4` inside `Figures` for the final output movie.

Finally, as in Part 1, with the help of ChatGPT, I created a VMD script called `reaction_visualization.vmd` in `Analysis`, as this step was performed manually.
