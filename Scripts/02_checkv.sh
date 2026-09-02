#!/bin/bash
checkv end_to_end \
    viral_sequences.fna \
    checkv_output \
    -t 16

#Only complete, high-quality, and medium-quality (>50% completeness) prophages were retained for downstream analyses.
