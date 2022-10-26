#! /bin/bash

# shellcheck disable=SC2164
cd ../workflow;

# Index genome and annotations
STAR \
--runMode genomeGenerate \
--genomeDir output/3_aligned_sequences/star_index \
--genomeFastaFiles genome/*.fa \
--sjdbGTFfile annotation/*.gtf \
--runThreadN 40
