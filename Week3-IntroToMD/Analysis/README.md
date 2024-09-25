Step Five Last Part:

    Analysis on EM (from data file):
        gmx_mpi energy -f ../Data/energymin.edr -o potential.xvg (10 0)

Step Six Last Part:
    gmx_mpi energy -f ../Data/nvt.edr -o temperature.xvg (16 0)

Step Seven Last Part:
    gmx_mpi energy -f ../Data/npt.edr -o pressure.xvg (18 0)

    gmx_mpi energy -f ../Data/npt.edr -o density.xvg (24 0)

Step Nine Analysis:
    gmx_mpi trjconv -s ../Data/md_10ns_output/md_10ns.tpr -f ../Data/md_10ns_output/md_10ns.xtc -o md_10ns_noPBC.xtc -pbc mol -center
        Select "1 0"
        Output: md_10ns_noPBC.xtc
 
    Continue: gmx_mpi rms -s ../Data/md_10ns_output/md_10ns.tpr -f md_10ns_noPBC.xtc -o rmsd.xvg -tu ns
        Select "4 4"
        Output: rmsd.xvg

    Continue: gmx_mpi rms -s ../Data/energymin.tpr -f md_10ns_noPBC.xtc -o rmsd_xtal.xvg -tu ns
        Output: rmsd_xtal.xvg

Step Nine last part:
    gmx_mpi gyrate -s ../Data/md_10ns_output/md_10ns.tpr -f md_10ns_noPBC.xtc -o gyrate.xvg
        Group 1
        Output: gyrate.xvg
