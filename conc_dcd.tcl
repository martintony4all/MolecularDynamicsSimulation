# Load structure
mol new step3_input.psf type psf waitfor all

# List of DCD files to merge
set dcd_files [list step5_production.dcd step6_production.dcd step7_production.dcd step8_production.dcd step9_production.dcd step10_production.dcd]

# Add each DCD file
foreach dcd $dcd_files {
    mol addfile $dcd type dcd waitfor all first 0 last -1 step 1
}

# Select all atoms
set all [atomselect top "all"]

# Write the concatenated trajectory
animate write dcd concatenated.dcd beg 0 end -1 waitfor all sel $all

# Exit VMD
quit
