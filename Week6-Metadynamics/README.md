Each of the following directories is explained below. Please also refer to the `Assignment.md` from Prof. Hocky's instructions. 

Run `source /scratch/work/courses/CHEM-GA-2671-2024fa/software/gromacs-2019.6-plumedSept2020/bin/GMXRC.bash.modules` first.

# Masterclass Exercise 1

Everything inside `MasterClass_Exe1` for this one.

## Run the two unbiased MD simulations (A & B)
Inside `stateA_simulation`
    `gmx_mpi mdrun -s ../../Inputs/topolA.tpr -nsteps 10000000`

Inside `stateB_simulation`
    `gmx_mpi mdrun -s ../../Inputs/topolB.tpr -nsteps 10000000`
(Was planned to use a sbatch file, but it was finished quickly so I gave up.)

## Step 2: Prepare the PLUMED input file
Inside `MasterClass_Exe1`, use `Step2_Input.ipynb`
(Fix to the right path: `MOLINFO STRUCTURE=../../Inputs/dialaA.pdb`)

I also examined the angles using VMD to get the correct atom numbers (check the `confout.gro` file inside them).

## Step 3: Run PLUMED driver
Inside `stateA_simulation` and `stateB_simulation`,
    Run `plumed driver --plumed plumed.dat --mf_xtc traj_comp.xtc`

## Step 4: Analyze the results
Inside `MasterClass_Exe1`, use `Step4_Analysis.ipynb`
    Run the python files to make the plots, (saved the figures in the `Step4_Figures`)
    See the detailed instructions inside `Step4_Figures`

4.1 Phi, Psi vs. time
    `phi_vs_time.png` 
    `psi_vs_time.png`

4.2 COLVAR vs MDTraj
Two figures under this, which are State A and B Comparison

## Step 5: Calculating standard deviation of dihedrals
    Check the Jupyter Notebook directly under `MasterClass_Exe1`
    Saved into the `Step5_Results`

# Lugano Exercise 1 (A only)

## Step 1: Create the PLUMED input file (plumed.dat)
Very complicated here, and please refer to my correct `.dat`

## Step 2: Run the GROMACS simulation with PLUMED
`gmx_mpi mdrun -s ../Inputs/topolA.tpr -nsteps 5000000 -plumed plumed.dat`

## Step 3: Analysis and Visualization
Use Jupyter Notebook `Step3_Analysis.ipynb`, and save the figures inside `Step3_Figures`.

- 3.1 Visualize the COLVAR output
I also remember I need to change the names to good-looking style for `COLVAR`, `HILLS`, and `.xtc` to the following:
COLVAR file: `ala2_metad_biasfactor10_pace500_height1.2_sigma0.3_10ns.colvar.txt`
HILLS file: `ala2_metad_biasfactor10_pace500_height1.2_sigma0.3_10ns.hills.txt`
XTC file (trajectory): `ala2_metad_10ns.xtc`

- 3.2 Analyze the HILLS

# Lugano Exercise 2 (A only)
Copy the Hills file from Exercise 1.

## Step 1: Estimate the Free Energy
`plumed sum_hills --hills ala2_metad_biasfactor10_pace500_height1.2_sigma0.3_10ns.hills.txt --outfile fes.dat`

## Step 2: Assess Convergence
`plumed sum_hills --hills ala2_metad_biasfactor10_pace500_height1.2_sigma0.3_10ns.hills.txt --stride 100 --mintozero --outfile fes_stride100.dat`
Then, move and save everything inside `Step2_Con_Output/`, which I will ignore when putting into GitHub.

## Step 3: Analysis and Visualization
Use Jupyter Notebook `Step3_Analysis.ipynb`, and save the figures inside `Step3_Figures`.
For Step 2, I also did a concise version like Lugano Exe 1 since there are too many data points.

# Lugano for 2D Metadynamics (A only)
Modify the `plumed.dat` file to handle both phi and psi dihedrals as collective variables for 2D metadynamics.

## Step 1: Run the 2D simulation
Use `gmx_mpi mdrun -s ../Inputs/topolA.tpr -nsteps 5000000 -plumed plumed.dat -deffnm ala2_metad_2d_10ns`

## Step 2: Check Convergence
`plumed sum_hills --hills ala2_metad_2d.hills.txt --outfile fes_2d.dat --mintozero`

Use `fes_2d.dat` to do the analysis.

## Step 3: Visualize the 2D FES with Contour Lines
Use Jupyter Notebook `Step3_Analysis.ipynb`, and save the figures inside `Step3_Figures`.
`2d_fes_contours.png` looks pretty cool, I really like it to be honest.

## BONUS Step: Create an Animated GIF of the FES Filling In
Then, move and save everything inside `Bonus_Output/`, which I will ignore when putting into GitHub.

Use Jupyter Notebook `Bonus_Analysis.ipynb`, and save the figures inside `Bonus_Figures`.

OMG, the final `2d_fes_animation.gif` looks amazing, and remember to `!pip install imageio` first.

--- Jialong Wang
