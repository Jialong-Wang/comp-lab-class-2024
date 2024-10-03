
# Data Directory

This directory contains data files generated during the molecular dynamics (MD) simulation process. Follow the steps below for each phase of the simulation.

## Step Five: Energy Minimization

Run the following commands to perform energy minimization:

```bash
gmx_mpi grompp -f ../Input/minim.mdp -c ../Setup/2jof_solv_ions.gro -p ../Setup/topol.top -o energymin.tpr
gmx_mpi mdrun -v -deffnm energymin
```

## Step Six: NVT Equilibration

Run the following commands for the NVT equilibration step:

```bash
gmx_mpi grompp -f ../Input/nvt.mdp -c ../Data/energymin.gro -r ../Data/energymin.gro -p ../Setup/topol.top -o nvt.tpr
gmx_mpi mdrun -deffnm nvt
```

## Step Seven: NPT Equilibration

Run the following commands for the NPT equilibration step:

```bash
gmx_mpi grompp -f ../Input/npt.mdp -c ../Data/nvt.gro -r ../Data/nvt.gro -t ../Data/nvt.cpt -p ../Setup/topol.top -o npt.tpr
gmx_mpi mdrun -deffnm npt
```

## 10 ns MD Output Files

Inside the `md_10ns_output` directory, the following files were generated (these files were not posted to GitHub due to their size):

- `md_10ns.cpt`
- `md_10ns_prev.cpt`
- `md_10ns.xtc`
- `md_10ns.gro`
- `md_10ns.edr`
- `md_10ns.log`
- `#md_10ns.log.1#`
- `md_10ns.tpr`
- `mdout.mdp` (Used for analysis)

I used `.gitignore` lol -- Sept 30, 2024
