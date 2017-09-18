#!/bin/bash

# example script to set up a project directory system with sample data, .gitkeep files, and a blank README
# Emma Gibson egibson@usfca.edu
# September 11, 2017

# make project folders
echo "creating folder structure..."
mkdir data data/raw_data code output output/tables output/figures
echo "created folder structure"

#to download data
echo "downloading raw data..."
cd data/raw_data
curl -L http://npk.io/PUlBaY+ -o fasta-archive.zip
#cd ../..
echo "downloaded raw data"

#unzip raw data
echo "unzipping raw data..."
unzip fasta-archive.zip
rm fasta-archive.zip
echo "unzipped raw data"
cd ../..

# to make the readme in the new folder
echo "creating readme..."
touch README.txt
echo "created readme"

#to add .gitkeep files to empty folders
echo "adding .gitkeep to empty folders..."
touch data/.gitkeep code/.gitkeep output/.gitkeep output/figures/.gitkeep output/tables/gitkeep
echo "added .gitkeep to empty folders"

