module avail gromacs
module load gromacs/openmpi/intel/2018.3

Create a Custom Index for Phi/Psi Angles:
gmx_mpi make_ndx -f ../Inputs/adp.gro -o adp.ndx

gmx_mpi angle -f md_15ns.xtc -n adp.ndx -ov ../Analysis/phi_psi.xvg

