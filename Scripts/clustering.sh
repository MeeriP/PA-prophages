#!/bin/bash
makeblastdb -in viral_sequences.fna -dbtype nucl -out virus.db
blastn -query viral_sequences.fna -db virus.db -outfmt "6 std qlen slen" -out virus_database.tsv
anicalc.py -i virus_database.tsv -o provirus_ani.tsv
aniclust.py --fna viral_sequences.fna --ani provirus_ani.tsv --out provirus_clusters_95.tsv --min_ani 95 --min_tcov 85 --min_qcov 0
