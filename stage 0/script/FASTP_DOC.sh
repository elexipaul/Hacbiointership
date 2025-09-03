#!/bin/bash
# Quality trimming of multiple samples using fastp

# Step 1: Create output directory
mkdir -p qc_reads

# Step 2: Define sample names
samples=(ACBarrie Alsen Baxter Chara Drysdale)

# Step 3: Loop through each sample and run fastp
for SAMPLE in "${samples[@]}"; do
    echo "Processing sample: $SAMPLE"

    fastp \
        -i "${SAMPLE}_R1.fastq.gz" \
        -I "${SAMPLE}_R2.fastq.gz" \
        -o "qc_reads/${SAMPLE}_R1.fastq.gz" \
        -O "qc_reads/${SAMPLE}_R2.fastq.gz" \
        -h "qc_reads/${SAMPLE}_report.html" \
        -j "qc_reads/${SAMPLE}_report.json" \
        --detect_adapter_for_pe \
        --thread 4

    echo "Finished: $SAMPLE"
    echo "----------------------------------------"
done
