Notes for me to remind myself (Sep 19, 2024)

srun --mem 8GB -t 4:00:00 --pty /bin/bash
module avail gromacs
module load gromacs/openmpi/intel/2020.4

Input: Before Step 1; Step 4 & 5 & 6 & 7 First Part
Setup: Step 1; 3; 4
Data: Step 5; Step 6; Step 7
Analysis: Step 5 & 6 & 7 Last Part
Figures: Step 5 & 6 & 7 Last Part (Used Jupyter notebook)

10 ns MD:
Put Input file (md_10ns.mdp) inside Input
Put SBATCH file (md_10ns.sbatch) Inside Input 
    Using command: sbatch md_10ns.sbatch
