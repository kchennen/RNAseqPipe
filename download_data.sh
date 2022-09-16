#! /bin/bash

# shellcheck disable=SC2164
cd workflow;

# Download genome fasta file into the genome/ folder
wget -c -P genome/ http://ftp.ensembl.org/pub/release-107/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz

# Download annotation file into the annotation/ folder
wget -c -P annotation/ http://ftp.ensembl.org/pub/release-107/gtf/homo_sapiens/Homo_sapiens.GRCh38.107.gtf.gz

## Decompress files for use with tools
#gunzip genome/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
#gunzip annotation/Homo_sapiens.GRCh38.107.gtf.gz
