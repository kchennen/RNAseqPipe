# RNAseqPipe
RNAseq pipeline


# Run

* Machine: Vega
* Working directory: /tempor/kchennen

## Cmds

```bash
export RNAseqPipe_ROOT_DIR=/tempor/kchennen;


ls /gstock/RAinRARE/data/Verdon/human_iPSC_MSN_RARB_day_50_sequencing/*/*.fastq.gz;



```

* Fetch Pipeline

```shell
git clone https://github.com/kchennen/RNAseqPipe.git RAinRARE_RNAseqPipe
```

* Download input

```shell
./scripts/fetch_input_files.sh /gstock/RAinRARE/data/Verdon/human_iPSC_MSN_RARB_day_50_sequencing/*
```