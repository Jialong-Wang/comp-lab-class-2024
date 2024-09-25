Step 4:

Update another ions.mdp file here, using the one the Tutorial provided

Step 5:
Add minim.mdp

Step 6:
Add nvt.mdp

Step 7:
Add npt.mdp

10 ns MD:
Put Input file (md_10ns.mdp) inside Input
Put SBATCH file (md_10ns.sbatch) Inside Input 
    Using command: sbatch md_10ns.sbatch

    Output file as follows (these are not needed when uploading to GitHub):
    -rw-rw-r--+ 1 jw8872 jw8872     6403 Sep 25 04:54 '#md_10ns.log.1#'
    -rw-rw-r--+ 1 jw8872 jw8872   656150 Sep 25 04:54  md_10ns.log
    -rw-rw-r--+ 1 jw8872 jw8872   685512 Sep 25 04:54  md_10ns.edr
    -rw-rw-r--+ 1 jw8872 jw8872   496165 Sep 25 04:54  md_10ns.gro
    -rw-rw-r--+ 1 jw8872 jw8872 26065368 Sep 25 04:54  md_10ns.xtc
    -rw-rw-r--+ 1 jw8872 jw8872   174600 Sep 25 04:54  md_10ns_prev.cpt
    -rw-rw-r--+ 1 jw8872 jw8872   174600 Sep 25 04:54  md_10ns.cpt

    -rw-rw-r--+ 1 jw8872 jw8872 267556 Sep 24 21:22 md_10ns.tpr
    -rw-rw-r--+ 1 jw8872 jw8872  11013 Sep 24 21:22 mdout.mdp

        Then moving those output files to Data/md_10ns_output
            mv md_10ns.cpt md_10ns_prev.cpt md_10ns.xtc md_10ns.gro md_10ns.edr md_10ns.log '#md_10ns.log.1#' ../Data/md_10ns_output &
            
