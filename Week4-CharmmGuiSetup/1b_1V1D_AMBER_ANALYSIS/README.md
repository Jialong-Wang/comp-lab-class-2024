# Step 9: Concatenate the Trajectories, Wrap the Protein, and Remove the Solvent

Before starting, ensure you load the necessary module with the following commands:

`module avail gromacs`
`module load gromacs/openmpi/intel/2023.3`

Note: I used version 2023.3 instead of 2020.4 due to an error encountered when wrapping the protein, which was resolved by switching versions.

## Concatenate the Trajectories using `trjcat`

`gmx_mpi trjcat -f ../1_1V1D_AMBER_INPUT/gromacs/step5_1.xtc -o concatenated.xtc`

## Wrap the Protein using `trjconv`

`gmx_mpi trjconv -s ../1_1V1D_AMBER_INPUT/gromacs/step5_1.tpr -f concatenated.xtc -o wrapped.xtc -pbc mol -center`

- Group selection: Choose **Group 1**.

## Remove the Solvent using `trjconv`

1. Generate an index file:

   `gmx_mpi make_ndx -f ../1_1V1D_AMBER_INPUT/gromacs/step5_1.gro -o index.ndx`
  
2. Remove solvent:

   `gmx_mpi trjconv -s ../1_1V1D_AMBER_INPUT/gromacs/step5_1.tpr -f wrapped.xtc -o protein_only.xtc -pbc mol -center -n index.ndx`

- Group selection: Choose **Group 1**.

# Step 10: Make Well-Labeled Plots of End-to-End Distance and Radius of Gyration vs. Time

## Calculate the End-to-End Distance

`gmx_mpi distance -f protein_only.xtc -s ../1_1V1D_AMBER_INPUT/gromacs/step5_1.tpr -oall end_to_end.xvg -select "atomnr 1 501"`

## Calculate the Radius of Gyration

`gmx_mpi gyrate -f protein_only.xtc -s ../1_1V1D_AMBER_INPUT/gromacs/step5_1.tpr -o gyrate.xvg`
