#!/bin/bash -x
# AUTHOR: Lindsay Pino, Lindsay.Pino@Pennmedicine.upenn.edu
# CREATE DATE: 17 March 2020

# Required inputs are
input_mgf=$1

# Note which file we're going to process.
echo "Now processing file $input_mgf"
echo

# Determine the base filename of the input mzXML
# and also the directory location
base_filename=$(basename "${input_mgf%.mgf}")
dir_location=$(dirname "${input_mgf}")
echo "Root filename is $base_filename"
echo "Directory it's located in is $dir_location"
echo

# Run ann_solo on the file
ann_solo --precursor_tolerance_mass 20 --precursor_tolerance_mode ppm \
	--precursor_tolerance_mass_open 500 --precursor_tolerance_mode_open Da \
	--fragment_mz_tolerance 0.02 ../results/als_ptms_U_als_ptms_new.splib \
	"$INPUTFILE" $base_filename*.mgf
