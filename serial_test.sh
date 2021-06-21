#!/bin/bash

module load anaconda/python2.7
module load htslib
module load samtools
# Load the conda environment.
source activate reditools2

# Serial test #
python src/cineca/reditools.py -f test/SRR2135332.bam -r test/chr21.fa -g chr21 -o serial_table.txt

source deactivate
