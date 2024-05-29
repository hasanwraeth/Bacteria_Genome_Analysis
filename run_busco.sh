#!/bin/bash

#create dir for summary
mkdir busco_sum
#define lineage
lineage=enterobacterales_odb10

for i in JT_01 N55391 RSK2980
do
busco -m genome -i genomes/"$i".fasta -o "$i"_busco -l "$lineage"
cp ./"$i"_busco/short_summary.specific.enterobacterales_odb10."$i"_busco.txt busco_sum
done 

generate_plot.py -wd busco_sum