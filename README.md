# RNAseqPipe
RNAseq pipeline


# Run

* Machine: Vega
* Working directory: /tempor/kchennen

    ```shell
    export RNAseqPipe_ROOT_DIR=/tempor/kchennen;
    ```
  
## Cmds

* Fetch Pipeline

```shell
git clone https://github.com/kchennen/RNAseqPipe.git RAinRARE_RNAseqPipe
```

* Download input

```shell
./scripts/fetch_input_files.sh /gstock/RAinRARE/data/Verdon/human_iPSC_MSN_RARB_day_50_sequencing
```

* Rename input files

```shell
./scripts/rename_fastq.py -s workflow/input/samples.tsv -i workflow/input
```


## TODO
- Create Snakemake pipeline