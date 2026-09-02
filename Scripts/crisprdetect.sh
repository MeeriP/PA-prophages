#!/bin/bash

# Run CRISPRDetect for multiple genomes listed in list.txt

INPUT_LIST="list.txt"
OUTPUT_DIR="PADLOC_RESULTS"
TMP_DIR="tmp"

mkdir -p "$OUTPUT_DIR"
mkdir -p "$TMP_DIR"

while read -r file; do

    if [[ ! -f "$file" ]]; then
        echo "File not found: $file"
        continue
    fi

    base_name=$(basename "$file" .fna)

    echo "Processing ${base_name}"

    CRISPRDetect.pl \
        -array_quality_score_cutoff 3 \
        -f "$file" \
        -o "${OUTPUT_DIR}/${base_name}"

done < "$INPUT_LIST"
