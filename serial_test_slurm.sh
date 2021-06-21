#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=00:10:00
#SBATCH -e serial-RT.e
#SBATCH -o serial-RT.o

# Serial test (SLURM)#
module load anaconda/python2.7
module load htslib
module load samtools
# Load the conda environment.
source activate /N/project-old/hatoSlate2/twmccart-dsRNA/reditools2

python src/cineca/reditools.py -f test/SRR2135332.bam -g chr21 -r test/chr21.fa -o serial_table_slurm.txt

source deactivate
