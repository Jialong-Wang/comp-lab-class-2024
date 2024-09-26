# Project Overview
Before starting, ensure you load the necessary module with the following commands:
    'srun --mem=8GB -t 4:00:00 --pty /bin/bash' 
    'module avail gromacs'
    'module load gromacs/openmpi/intel/2020.4'

The primary goal of this project is to perform a sample molecular dynamics (MD) calculation on the 2JOF protein, following the steps provided in this tutorial: [MD Tutorial: Lysozyme in Water](http://www.mdtutorials.com/gmx/lysozyme/index.html).

Please refer to the `Assignment.md` for detailed instructions and explanations related to this course project. Additionally, check the `README.md` in each directory for specific explanations pertaining to that section.

## Steps Overview

The project workflow consists of the following steps:

1. **Prepare the Topology**
2. **Examine the Topology**
3. **Defining the Unit Cell & Adding Solvent**
4. **Adding Ions** (Note: This may not be necessary, as in our case)
5. **Energy Minimization**
6. **Equilibration (NVT)**
7. **Equilibration (NPT)**
8. **Production MD**
9. **Final Analysis**

## Directory Structure
- **/Input:** Contains the `.mdp` files needed before Step 1 and during Steps 4, 5, 6, and 7.
- **/Setup:** Contains `.gro` files generated during Steps 2, 3, and 4. These files set up the environment by defining the box and adding water/ions (if applicable).
- **/Data:** Contains processed files used for analysis, primarily generated between Steps 5, 6, and 7.
- **/Analysis:** Contains Jupyter Notebooks that generate the figures for the analysis performed in Steps 5, 6, 7, and 9.
- **/Figures:** Contains visualizations of the protein without solvent (viewed in VMD) and other figures generated during the analysis.

## Notes (As of Sep 19, 2024)
- **Input:** Before Step 1, Steps 4, 5, 6, and the first part of Step 7.
- **Setup:** Steps 1, 3, and 4.
- **Data:** Steps 5, 6, and 7.
- **Analysis:** Steps 5, 6, 7 (last part).
- **Figures:** Steps 5, 6, and 7 (last part, created using Jupyter Notebooks).

## Additional Steps for Step 9 (10 ns MD)
- Place the input file (`md_10ns.mdp`) inside the `Input` directory.
- Place the SBATCH file (`md_10ns.sbatch`) inside the `Input` directory.
- Submit the job using the command: `sbatch md_10ns.sbatch`.
  
