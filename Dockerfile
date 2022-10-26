FROM continuumio/miniconda3:4.8.3

MAINTAINER Kirsley Chennen <kchennen@unistra.fr>

# Set environment variables ============================================================================================
# for output in detached mode
ENV PYTHONUNBUFFERED=1
ENV myuser=kchennen
ENV myhome=/home/${myuser}
ENV project=RAinRARETest
ENV cwd=${myhome}/${project}

## Add user ============================================================================================================
#RUN useradd --create-home --shell /bin/bash ${myuser}
#USER ${myuser}

# Install dependencies =================================================================================================

# Add bioinformatic channels for downloading required packages
RUN conda config --add channels conda-forge
RUN conda config --add channels defaults
RUN conda config --add channels r
RUN conda config --add channels bioconda

# Install git
RUN conda install -c anaconda git wget --yes

# Install FastQC
RUN conda install -c bioconda fastqc --yes

# Install Trim_Galore
RUN conda install -c bioconda trim-galore --yes

# Install SortMeRNA
RUN conda install -c bioconda sortmerna --yes

# Install STAR-aligner
RUN conda install -c bioconda star --yes

# Install featureCounts
RUN conda install -c bioconda subread --yes

# Install multiQC
RUN conda install -c bioconda multiqc --yes



# Set working directory ================================================================================================
# Clone this repository with folder structure into the current working folder
#RUN cd ${myhome}
#RUN #git clone https://github.com/twbattaglia/RNAseq-workflow /opt/${project}
#
## Change directory into the new folder
#RUN cd /opt/${project}

# Copy code source =====================================================================================================

# Setup project ========================================================================================================

CMD ["bash"]


# Define mountable directories
# VOLUME []