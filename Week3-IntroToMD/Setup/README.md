Step One: Execute pdb2gmx by issuing the following command

gmx_mpi pdb2gmx -f XXX.pdb -o XXX.gro -water spce -ignh 
    ## Generate following files:
    2jof_processed.gro
    posre.itp
    topol.top

Step Three (inside this directory):
gmx_mpi editconf -f 2jof_processed.gro -o 2jof_newbox.gro -c -d 1.0 -bt cubic
    ## Create the newbox

gmx_mpi solvate -cp 2jof_newbox.gro -cs spc216.gro -o 2jof_solv.gro -p topol.top
    ## Create another one: topol.top, which also contains the same topol.top one before

Step Four (Second Part here; first part check the input README.md):

gmx_mpi grompp -f ../Input/ions.mdp -c 2jof_solv.gro -p topol.top -o ions.tpr

    Then use: gmx_mpi genion -s ions.tpr -o 2jof_solv_ions.gro -p topol.top -pname NA -nname CL -neutral'
        Comments: The results says "No ions to add, will just copy input configuration." so this protein has no charges, in contrast to the Tutorial.