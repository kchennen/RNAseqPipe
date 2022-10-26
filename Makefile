## .PHONY defines parts of the makefile that are not dependant on any specific file
## This is most often used to store functions
.PHONY = help

# Defines the default target that `make` will to try to make, or in the case of a phony target, execute the specified commands
# This target is executed whenever we just type `make`
.DEFAULT_GOAL = help


help:
	@echo "##########################################################################"
	@echo "# RNAseq Pipeline"
	@echo "##########################################################################"
	@echo ""
	@echo "-----------------------------------HELP-----------------------------------"
	@echo "* init_project_dirs		- Init project directories."
	@echo "* download_assets		- Download assets data."
	@echo "* run		- Run package with arguments: make run ARGS='--foo bar'."


project_name = RAinRARE_RNAseqPipe
project_name_lc = $(shell echo $(project_name) | tr "[:upper:]" "[:lower:]")
GENOME_ASSEMBLY = GRCh38
RELEASE_VERSION = 107
PROJECT_PATH = $(shell  cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
WORKFLOW_PATH = $(PROJECT_PATH)/workflow

# TODO: !!!
init_env:
	@mkdir -p env
	conda create --prefix=$(PROJECT_PATH)/env/conda/$(project_name_lc)
#   @mamba create -n $(project_name) -p $(PROJECT_PATH)/.env -f env.yaml

export_docker_img:
	docker build -t $(project_name_lc):v1.0 .
	docker save $(project_name_lc):v1.0 -o $(PROJECT_PATH)/env/$(project_name_lc).tar

#convert_docker2singularity:
#	spython recipe Dockerfile env/$(project_name).def
#	singularity build --remote env/$(project_name).sif env/$(project_name).def

convert_docker2singularity:
	singularity build $(project_name_lc)_v1.0.sif docker-archive://$(PROJECT_PATH)/env/$(project_name_lc).tar

download_genome_fasta:
	wget -c -P $(WORKFLOW_PATH)/genome/ "https://ftp.ensembl.org/pub/release-$(RELEASE_VERSION)/fasta/homo_sapiens/dna/Homo_sapiens.$(GENOME_ASSEMBLY).dna.primary_assembly.fa.gz"

download_genome_annotation:
	wget -c -P $(WORKFLOW_PATH)/annotation/ "https://ftp.ensembl.org/pub/release-$(RELEASE_VERSION)/gtf/homo_sapiens/Homo_sapiens.$(GENOME_ASSEMBLY).$(RELEASE_VERSION).gtf.gz"

download_sortmerna_db:
	@# Download the sortmerna package
	wget -c -P $(WORKFLOW_PATH)/sortmerna_db https://github.com/biocore/sortmerna/archive/2.1b.zip

	@# Decompress folder
	unzip $(WORKFLOW_PATH)/sortmerna_db/2.1b.zip -d $(WORKFLOW_PATH)/sortmerna_db

	@# Move the database into the correct folder
	mv $(WORKFLOW_PATH)/sortmerna_db/sortmerna-2.1b/rRNA_databases/ $(WORKFLOW_PATH)/sortmerna_db/

	@# Remove unnecessary folders
	rm $(WORKFLOW_PATH)/sortmerna_db/2.1b.zip
	rm -r $(WORKFLOW_PATH)/sortmerna_db/sortmerna-2.1b

	@# Save the location of all the databases into one folder
	sortmernaREF=$(WORKFLOW_PATH)/sortmerna_db/rRNA_databases/silva-arc-16s-id95.fasta,$(WORKFLOW_PATH)/sortmerna_db/index/silva-arc-16s-id95:\
	$(WORKFLOW_PATH)/sortmerna_db/rRNA_databases/silva-arc-23s-id98.fasta,$(WORKFLOW_PATH)/sortmerna_db/index/silva-arc-23s-id98:\
	$(WORKFLOW_PATH)/sortmerna_db/rRNA_databases/silva-bac-16s-id90.fasta,$(WORKFLOW_PATH)/sortmerna_db/index/silva-bac-16s-id95:\
	$(WORKFLOW_PATH)/sortmerna_db/rRNA_databases/silva-bac-23s-id98.fasta,$(WORKFLOW_PATH)/sortmerna_db/index/silva-bac-23s-id98:\
	$(WORKFLOW_PATH)/sortmerna_db/rRNA_databases/silva-euk-18s-id95.fasta,$(WORKFLOW_PATH)/sortmerna_db/index/silva-euk-18s-id95:\
	$(WORKFLOW_PATH)/sortmerna_db/rRNA_databases/silva-euk-28s-id98.fasta,$(WORKFLOW_PATH)/sortmerna_db/index/silva-euk-28s-id98

#	@# Run the indexing command
#	indexdb_rna --ref $sortmernaREF

download_assets: download_genome_fasta download_genome_annotation download_sortmerna_db
