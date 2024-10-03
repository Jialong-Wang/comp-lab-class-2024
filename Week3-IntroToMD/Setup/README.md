
# Setup Directory

This directory contains files and commands for setting up the molecular dynamics (MD) simulation environment. Follow the steps below to execute the necessary commands.

## Step One: Generate the Topology

Execute `pdb2gmx` with the following command:

```bash
gmx_mpi pdb2gmx -f XXX.pdb -o XXX.gro -water spce -ignh
```

### Files generated:

- `2jof_processed.gro`
- `posre.itp`
- `topol.top`

## Step Three: Define the Unit Cell and Solvate the System

Run the following commands to create the unit cell and solvate the system.

1. Create the new box:

   ```bash
   gmx_mpi editconf -f 2jof_processed.gro -o 2jof_newbox.gro -c -d 1.0 -bt cubic
   ```

2. Solvate the system:

   ```bash
   gmx_mpi solvate -cp 2jof_newbox.gro -cs spc216.gro -o 2jof_solv.gro -p topol.top
   ```

   - This command also updates the `topol.top` file.

## Step Four: Adding Ions (Second part)

For the first part of this step, refer to the `README.md` in the **Input** directory.

1. Prepare the input file:

   ```bash
   gmx_mpi grompp -f ../Input/ions.mdp -c 2jof_solv.gro -p topol.top -o ions.tpr
   ```

2. Add ions (note: in this case, no ions are added due to neutral charges):

   ```bash
   gmx_mpi genion -s ions.tpr -o 2jof_solv_ions.gro -p topol.top -pname NA -nname CL -neutral
   ```

   - The result indicates: "No ions to add, will just copy input configuration."
   - This protein has no charges, in contrast to the tutorial example.
