
# Analysis Directory

This directory contains the analysis scripts and output data generated from the molecular dynamics (MD) simulations. Follow the steps below for analysis at different stages.

## Step Five (Last Part): Energy Minimization Analysis

Perform analysis on energy minimization:

```bash
gmx_mpi energy -f ../Data/energymin.edr -o potential.xvg
```
- Select "10 0" to output the potential energy.

## Step Six (Last Part): NVT Equilibration Analysis

Analyze the NVT equilibration:

```bash
gmx_mpi energy -f ../Data/nvt.edr -o temperature.xvg
```
- Select "16 0" to output the temperature.

## Step Seven (Last Part): NPT Equilibration Analysis

Analyze the NPT equilibration:

1. Output the pressure:

   ```bash
   gmx_mpi energy -f ../Data/npt.edr -o pressure.xvg
   ```
   - Select "18 0" for pressure.

2. Output the density:

   ```bash
   gmx_mpi energy -f ../Data/npt.edr -o density.xvg
   ```
   - Select "24 0" for density.

## Step Nine: 10 ns MD Analysis

1. Remove periodic boundary conditions (PBC):

   ```bash
   gmx_mpi trjconv -s ../Data/md_10ns_output/md_10ns.tpr -f ../Data/md_10ns_output/md_10ns.xtc -o md_10ns_noPBC.xtc -pbc mol -center
   ```
   - Select "1 0" to center the molecule.
   - Output: `md_10ns_noPBC.xtc`

2. Root Mean Square Deviation (RMSD) analysis:

   ```bash
   gmx_mpi rms -s ../Data/md_10ns_output/md_10ns.tpr -f md_10ns_noPBC.xtc -o rmsd.xvg -tu ns
   ```
   - Select "4 4" to calculate the RMSD.
   - Output: `rmsd.xvg`

3. RMSD against the crystal structure:

   ```bash
   gmx_mpi rms -s ../Data/energymin.tpr -f md_10ns_noPBC.xtc -o rmsd_xtal.xvg -tu ns
   ```
   - Output: `rmsd_xtal.xvg`

4. Radius of gyration analysis:

   ```bash
   gmx_mpi gyrate -s ../Data/md_10ns_output/md_10ns.tpr -f md_10ns_noPBC.xtc -o gyrate.xvg
   ```
   - Select group 1.
   - Output: `gyrate.xvg`

## Additional Notes

The Jupyter Notebooks for additional analysis (two of them, as you will see) have been moved to the `/Analysis` directory under the instructions of the TA. Figures will be produced and saved in the `/Figures` directory.
