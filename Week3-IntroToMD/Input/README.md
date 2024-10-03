# Input Directory

This directory contains input files for various steps of the molecular dynamics (MD) simulations. Please follow the instructions below for adding the necessary files at each step.

Jialong Wang - Sept 30, 2024 Updated

## Step 4: Adding Ions

- Add the `ions.mdp` file here, using the one provided in the tutorial.

## Step 5: Energy Minimization

- Add the `minim.mdp` file for the energy minimization step.

## Step 6: NVT Equilibration

- Add the `nvt.mdp` file for the NVT equilibration step.

## Step 7: NPT Equilibration

- Add the `npt.mdp` file for the NPT equilibration step.

## 10 ns MD Production Run

- Place the input file `md_10ns.mdp` inside this directory.
- Place the SBATCH file `md_10ns.sbatch` inside this directory.
  
  To run the job, use the following command:

  ```bash
  sbatch md_10ns.sbatch

## Output Files (For my own reference )

After the job completes, the following output files will be generated (note: these files are not needed when uploading to GitHub):

`-rw-rw-r--+ 1 jw8872 jw8872     6403 Sep 25 04:54 '#md_10ns.log.1#'`
`-rw-rw-r--+ 1 jw8872 jw8872   656150 Sep 25 04:54  md_10ns.log`
`-rw-rw-r--+ 1 jw8872 jw8872   685512 Sep 25 04:54  md_10ns.edr`
`-rw-rw-r--+ 1 jw8872 jw8872   496165 Sep 25 04:54  md_10ns.gro`
`-rw-rw-r--+ 1 jw8872 jw8872 26065368 Sep 25 04:54  md_10ns.xtc`
`-rw-rw-r--+ 1 jw8872 jw8872   174600 Sep 25 04:54  md_10ns_prev.cpt`
`-rw-rw-r--+ 1 jw8872 jw8872   174600 Sep 25 04:54  md_10ns.cpt`

`-rw-rw-r--+ 1 jw8872 jw8872 267556 Sep 24 21:22 md_10ns.tpr`
`-rw-rw-r--+ 1 jw8872 jw8872  11013 Sep 24 21:22 mdout.mdp`

Once the job completes, move the output files to the `Data/md_10ns_output` directory with the following command:

`mv md_10ns.cpt md_10ns_prev.cpt md_10ns.xtc md_10ns.gro md_10ns.edr md_10ns.log '#md_10ns.log.1#' ../Data/md_10ns_output &`


