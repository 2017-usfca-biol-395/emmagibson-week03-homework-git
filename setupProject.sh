#!/bin/bash

# test script to make a project folder with a blank readme
# Emma Gibson egibson@usfca.edu
# August 30, 2017

# dynamic dates: mkdir $(date "+%Y-%m-%d)_bioinformatics_project

# make project folders
echo "creating folder structure..."
mkdir $(date "+%Y-%m-%d")_bioinformatics_project
cd 2017-08-30_bioinformatics_project
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

