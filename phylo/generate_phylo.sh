#!/bin/bash

MSA_phylip=$1
bname=$(basename $MSA_phylip)
phyml -i $MSA_phylip -m JC69 -o tlr

mv ${bname}_phyml_stats.txt phyml_stats.txt 
mv ${bname}_phyml_tree.txt phyml_tree.txt
