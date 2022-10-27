#! /bin/bash

# shellcheck disable=SC2164
cd ../workflow;

# Index genome and annotation
STAR \
--runMode genomeGenerate \
--genomeDir output/4_aligned_sequences/star_index \
--genomeFastaFiles genome/*.fa \
--sjdbGTFfile annotation/*.gtf \
--runThreadN 40

## optional: remove unzipped files
#rm genome/Homo_sapiens.GRCh38.dna.primary_assembly.fa;
#rm annotation/Homo_sapiens.GRCh38.107.gtf;

