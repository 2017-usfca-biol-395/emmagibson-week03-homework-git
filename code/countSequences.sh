#!/bin/bash

# a script to count sequences in .fasta files in data folder
# Emma Gibson egibson@dons.usfca.edu
# due September 11, 2017

#move to proper directory
cd ..
cd data/raw_data

# count sequences in file
for file in *.fasta
do
echo "This file has $(grep -c "^>" $file) sequences"
done