Step Five:
gmx_mpi grompp -f ../Input/minim.mdp -c ../Setup/2jof_solv_ions.gro -p ../Setup/topol.top -o energymin.tpr

gmx_mpi mdrun -v -deffnm energymin


Step Six:
gmx_mpi grompp -f ../Input/nvt.mdp -c ../Data/energymin.gro -r ../Data/energymin.gro -p ../Setup/topol.top -o nvt.tpr

gmx_mpi mdrun -deffnm nvt

Step Seven:
gmx_mpi grompp -f ../Input/npt.mdp -c ../Data/nvt.gro -r ../Data/nvt.gro -t ../Data/nvt.cpt -p ../Setup/topol.top -o npt.tpr

gmx_mpi mdrun -deffnm npt

Inside md_10ns_output, we have (Below Files I DID not post on GitHub due to the file sizes)
    md_10ns.cpt md_10ns_prev.cpt md_10ns.xtc md_10ns.gro md_10ns.edr md_10ns.log '#md_10ns.log.1#'

    md_10ns.tpr mdout.mdp (Used to do analysis)
