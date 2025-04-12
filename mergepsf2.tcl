#!/usr/bin/tclsh

package require psfgen

resetpsf

# Set absolute paths for macOS
set pax6_psf "/Users/martinnwadiugwu/Downloads/NAMD_tutorial/WorkingDir/PAX6_autopsf.psf"
set ligand_psf "/Users/martinnwadiugwu/Downloads/NAMD_tutorial/WorkingDir/ligandrm.psf"
set pax6_pdb "/Users/martinnwadiugwu/Downloads/NAMD_tutorial/WorkingDir/PAX6_autopsf.pdb"
set ligand_pdb "/Users/martinnwadiugwu/Downloads/NAMD_tutorial/WorkingDir/ligandrm.pdb"

# Check if files exist before reading
if {![file exists $pax6_psf]} {
    puts "Error: PAX6_autopsf.psf not found at $pax6_psf"
    exit 1
}
if {![file exists $ligand_psf]} {
    puts "Error: ligandrm.psf not found at $ligand_psf"
    exit 1
}
if {![file exists $pax6_pdb]} {
    puts "Error: PAX6_autopsf.pdb not found at $pax6_pdb"
    exit 1
}
if {![file exists $ligand_pdb]} {
    puts "Error: ligandrm.pdb not found at $ligand_pdb"
    exit 1
}

# Read PSF files
readpsf $pax6_psf
readpsf $ligand_psf

# Read PDB files
coordpdb $pax6_pdb
coordpdb $ligand_pdb

# Write merged PSF and PDB files
writepsf complex.psf
writepdb complex.pdb

puts "Process Ended --martinnwadiugwu--"

quit