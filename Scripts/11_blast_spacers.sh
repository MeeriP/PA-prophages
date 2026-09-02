#!/bin/bash
makeblastdb -in representative_prophages.fna -dbtype nucl -out representatives_db
blastn -query spacers.fna -db representatives_db -out spacer_matches.tsv -outfmt 6
