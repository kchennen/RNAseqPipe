# RNAseqPipe

RNAseq pipeline for RAinRARE project.


**Run**

* Machine: Vega
* Working directory: /tempor/kchennen

    ```shell
    export RNAseqPipe_ROOT_DIR=/tempor/kchennen;
    ```
  
## Cmds

### Installation of working environment

* Fetch Pipeline

    ```shell
    git clone https://github.com/kchennen/RNAseqPipe.git RAinRARE_RNAseqPipe
    ```

* Init environment 
  * On CSTB server
  
    ````shell
    module load python/conda
    module load singularity
    ````
    
  * On local machine
  
    ````shell
    make init_env
    ````
 
  * Activate conda environment

    ````shell
    conda activate env/conda/RAinRARE_RNAseqpipe
    ````
 
  * Deactivate conda environment

    ````shell
    conda deactivate
    ````
  
* Configure environment
  * install [Singularity Python](https://singularityhub.github.io/singularity-cli/)

      ```shell
      conda install spython
      ```

  * Connect to [Singularity Container Service](https://cloud.sylabs.io/auth/tokens) (with GitHub account) and generate a Token

* Convert `Dockerfile` into `Singularity` image remotely

    ```shell
    make convert_docker2singularity
    ```

### Prepare data
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
