# GitHub Flow homework assignment for BIOL395
## Due as a pull request on September 11, 2017 before 11:30 am 

The **goal of this assignment** is to get you to get more practice writing bash scripts on the command line, doing so in the context of a version-controlled workflow, and submitting your work as a Pull Request on GitHub.

You will write two bash scripts for this assignment. The first is very similar to the ones we have been working on in class -- it sets up a directory structure and downloads some data files. The second is a script that will produce some basic summary information about these fasta files. You will need to write this second script to accept and parse command line arguments and summarize them using a for loop.

Please follow the instructions carefully and read them all before getting started.

This first assignment will be worth 20 points. The grading breakdown will be as follows:

* 10 points - Completes all required steps (as outlined below)
* 5 points - Both scripts are appropriately commented and well organized
* 5 points - Appropriate use of git to version control the steps, including adding and committing the appropriate files at the specific steps below, and writing informative and appropriately formatted commit messages

You must submit your work as a Pull Request to the class organization ('2017-usfca-biol-395') on GitHub by 11:30 am on Monday, September 11 for full credit. Late assignments will not be accepted, since we will be peer reviewing each other's code after it is submitted.

Steps:

1. Fork this repository to your own GitHub account.
2. Clone the fork of the repository to your laptop.
3. Go into that directory from the command line.
4. Write a bash script named `setupProject.sh` to create the following directory and file structure. You can use `curl -L http://npk.io/PUlBaY+ -o fasta-archive.zip` to get the raw data, which are a set of three fasta files compressed together. To unzip these files, you can use the `unzip` command. The syntax is `unzip fasta-archive.zip`. Windows (Ubuntu) users may have to first run `sudo apt-get install unzip` to install the `unzip` program. Once you have downloaded and unzipped the archive, you can delete it, so only the three uncompressed files remain.

```
   .
   ├── README.md
   ├── setupProject.sh # this is the script you will write to set up the project
   ├── code
   ├── data
   │   └── raw_data
   │       ├── animal_mRNA.fasta
   │       ├── crab_mitochondrial_rRNA.fasta
   │       └── plant_rRNA.fasta
   └── output
       ├── figures
       └── tables

```

5. Commit the first script (by itself) once it works successfully. Make sure you write
   an [appropriate commit message](https://chris.beams.io/posts/git-commit/).
6. Update the script to add invisible `.gitkeep` files in any empty directories as necessary 
   (git doesn't track directories unless they have files in them). You can do
   this with the `touch .gitkeep` command in the appropriate locations.
7. Add and commit these changes to the script in a second commit.
8. Add and commit the rest of the directory structure and other files in a third commit.
9. Create a second bash script. This one should be located in the `code` directory.
10. The goal of this second script is to count the number of sequences in an arbitrary number of fasta files and report that information to the user. If I run the script like so: `bash countSequences.sh example.fasta` it should produce a line of output that looks something like: `The example.fasta file has 17 sequences in it.` It should be able to handle any number of fasta files given to it (i.e. if I run `bash countSequences.sh file1.fasta file2.fasta` I should get two lines of output, one for each input file. This can be most directly done with a combination of the `$@` parameter, a `for` loop, and `grep`. You may want to refer to the chapters in the book we have read so far, notes you have made from class, as well as the wonderful programming power tool known as Google to do this appropriately.

```
# example
$ bash countSequences.sh *.fasta
The file example1.fasta has 13 sequences in it.
The file example2.fasta has 21 sequences in it.
The file example3.fasta has 8 sequences in it.
```

11. After you have finished this script and it works properly (don't forget the header and other comments in the file!), add and commit this second script. 
12. Your finished repository should look like this (hidden/invisible files not shown):

```
   .
   ├── README.md
   ├── setupProject.sh
   ├── code
   │   └── countSequences.sh
   ├── data
   │   └── raw_data
   │       ├── animal_mRNA.fasta
   │       ├── crab_mitochondrial_rRNA.fasta
   │       └── plant_rRNA.fasta
   └── output
       ├── figures
       └── tables

```

13. Push these new commits back to your fork of the original repository on GitHub with `git push -u origin master`. Remember that you can only push what you have committed, so be sure all of your work is committed. Be sure to save your files often, and check `git status` frequently as you work.
14. Open a pull request to the class organization's original repository with your changes. Make sure the Pull Request (PR) has a useful description of the changes you made.

**NOTE:** One challenge you may run into is working with the code file `countSequences.sh` and the fasta files in two different directories. There are several ways to make it work, but all require you to be aware of the paths to the script and to the data files in relation to your working directory. As an example, if you are at the highest level in your project directory (i.e. where `ls` will show you `code`, `data`, etc), you can run the script with `bash code/countSequences.sh data/raw_data/example.fasta`. Or, you could change your working directory to be the `raw_data` folder, and run the script like so: `bash ../../code/countSequences.sh example.fasta`. Either is fine with me. The code in the script should be the same in either case, although the outputs will be slightly different.
