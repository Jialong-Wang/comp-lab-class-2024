
Each of the following directories is explained below. Please also refer to the `Assignment.md` from Prof. Hocky's instructions. 

# Section 1: Study SARS-Cov-2 Helicase NSP 13 (6ZSL)

Everything below is inside `1_6ZSL`

## 1.1 AlphaFold Server Inputs
Use AlphaFold Server to run, check the `rcsb_pdb_6ZSL.fasta` in `Inputs` for that; add RNA sequence UUUUUUUU, and include 1 ATP molecule (Ligand).

## 1.2 Use VMD to Visualize the Structures

- 1.2.1 (6ZSL_AF-PDB_Superimposition): I choose `fold_week_7_model_0.cif` and the original `6zsl.pdb` to align.
    For `.cif`, enter `nucleic and nucleic B` (blue) and `nucleic and nucleic C` (yellow).
    For `.pdb`, enter all and choose red.
    Make the representation look good by using newcartoon and Licoric.

- 1.2.2 (Structure Alignment with RNA & ATP)
Use `Beta` for each representation.

## 1.3 Mdtraj
Use Jupyter notebook `mdtraj_Analysis.ipynb` to install biopython first to create a `.pdb` file, and then generate the results at the end.

# Section 2: Study 2BTF

Everything below is inside `2_2BTF`.

## 2.1 AlphaFold (AF3) Server Inputs
Follow the steps in `Assignment.md` to submit a 2BTF with ATP and another one with ADP.
Use AlphaFold Server to run, check the `rcsb_pdb_2BTF.fasta` (remove X's pls) in `Inputs` for that; add ATP + Mg2+ or ADP + Mg2+.

## 2.2 Use VMD to Visualize the Structures
Inside `Outputs`, I choose `fold_wk7_2btf_atp_model_0.cif` & `fold_wk7_2btf_adp_model_0.cif`.

2BTF Actin (chain A) & Profilin (chain B): Use a ribbon for both ATP & ADP.
ATP (CPK, blue) and within 5 of ATP (CPK, blue, transparent).
ADP (CPK, red) and within 5 of ATP (CPK, red, transparent).

Check the final `2BTF_AF3_ATP_ADP_COMPARISON.png` inside `Images`.

## 2.3 Generate Actin-Profilin Prediction Using ColabFold (AF2)
Use the same FASTA sequences, but ensure they are separated by a colon (:).
Check `2btf_af2.pdb`, one of the outputs I downloaded from ColabFold (original name for my own reference: `test_8a56e_unrelaxed_rank_003_alphafold2_multimer_v3_model_1_seed_000.pdb`).
AF3 Before (black).
AF2 from ColabFold (orange).

Check the final `2BTF_AF3_AF2_COMPARISON.png` inside `Images`.

## 2.4 Analyze the AF2 and AF3 Models Using MDTraj
Use Jupyter notebook `mdtraj_Analysis.ipynb`.

Distance between AF2 and AF3 (Actin, Chain A):
Filename: `Images/af2_af3_distance_actin_chain_a.png`.

Distance for Actin Residues near ATP Binding Sites:
Filename: `Images/af3_atp_distance_actin.png`.

Distance for Actin Residues near Mg2+ Binding Sites:
Filename: `Images/af3_mg_distance_actin.png`.

# Section 3: Study 1V1D
Will update soon...
