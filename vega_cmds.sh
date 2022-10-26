# Working directory
cd /tempor/kchennen/RAinRARE_RNAseqPipe;

# Crete environment
module load python/conda;
#conda create --prefix=/gstock/RAinRARE/env/conda/rainrare_rnaseqpipe;
conda create --prefix=/enadisk/tempor/kchennen/RAinRARE_RNAseqPipe/env/conda/rainrare_rnaseqpipe;

# Load environment
#source activate /gstock/RAinRARE/env/conda/rainrare_rnaseqpipe;
source activate env/conda/rainrare_rnaseqpipe;
#conda activate /enadisk/tempor/kchennen/RAinRARE_RNAseqPipe/env/conda/rainrare_rnaseqpipe;

# Configure environment
conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels bioconda

# TODO: Add versions !!!
conda install -c bioconda fastqc --yes
conda install -c bioconda trim-galore --yes
conda install -c bioconda sortmerna --yes
conda install -c bioconda star --yes
conda install -c bioconda subread --yes
conda install -c bioconda multiqc --yes
conda install -c bioconda snakemake --yes
