#!/bin/bash

dir=genome_vap
cat $dir/*.fasta >all.seqs.fasta


num=$(grep '>' all.seqs.fasta|wc -l)

echo "$num sequences identified and combined"
head allseqs.fasta

echo "sequences saved as allseqs.fasta"
