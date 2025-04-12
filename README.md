Merge PSF/PDB Files for NAMD

This Tcl script merges two molecular structures—a protein (PAX6) and a ligand (tonaftate)—into a single .psf and .pdb file for molecular dynamics simulations using NAMD and VMD.
You can obtain the ligand files using the 'Ligand Reader and Modeler" from CHARMGUI website. You will need to uplaod an SDF file of your ligand of interest. The protein
pdf file can be obtained from protein data bank and the autopsf file can be gotten using VMD.

Requirements:
VMD with psfgen plugin (e.g., VMD 1.9.4a57 or newer)

Tcl interpreter

macOS file paths (adjust paths if using another OS)

Input Files:
Ensure the following protein and ligand files are located in the specified WorkingDir e.g :

PAX6_autopsf.psf

PAX6_autopsf.pdb

ligandrm.psf

ligandrm.pdb

Usage:
Open a terminal and Run the script using:

startup.command -dispdev text -e mergepsf2.tcl

(Replace mergepsf2.tcl with the actual filename if different.)

Expected Output:
complex.psf – merged structure topology

complex.pdb – merged coordinate file

...These output files especially the complex.pdd can be used as inputs for NAMD protein-ligand simulations using CHARMGUI solutions builder.

PS:
The script includes checks for file existence and will exit with a clear error message if any file is missing.
Paths are currently hardcoded for macOS; modify them as needed for other environments.
