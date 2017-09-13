#!/bin/bash

# a script to count sequences in .fasta files in data folder
# Emma Gibson egibson@dons.usfca.edu
# due September 11, 2017

# count sequences in file
# add another argument to run it, like "./countSequences ../data/raw_data/*.fasta"
for file in $@
do
echo "The file ${file##*/} has $(grep -c "^>" $file) sequences"
done
