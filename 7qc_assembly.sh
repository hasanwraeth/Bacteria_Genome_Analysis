#!/bin/bash


mkdir QC_ASSEMBLY
quast.py -o QC_ASSEMBLY -R 128FXT.fasta P7741_SPADES_OUT/scaffolds.fasta P7741.polished.fasta
