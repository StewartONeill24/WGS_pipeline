# WGS_pipeline

This repository encompasses a set of shell scripts designed for the end-to-end processing of whole genome sequencing data, starting from raw FASTQ files to the annotated list of variants. The pipeline employs widely-used bioinformatics tools like bwa, Picard, GATK, and bamtools, alongside custom filtering and annotation steps to ensure high-quality, reliable variant identification and annotation. Each script is modular, allowing for customization based on specific project requirements or data characteristics.

The pipeline operates in several distinct stages:

Alignment and Base Quality Score Recalibration: Aligning sequencing reads to a reference genome and optimizing quality scores to account for systematic errors in sequencing.

Merging and Post-processing: Combining data from multiple sequencing lanes, followed by sorting, duplicate marking, and indexing to prepare for variant calling.

Variant Calling: Identifying variants from the processed sequencing data using statistical models to distinguish true variants from sequencing errors.

Annotation: Enriching variants with information from various databases to understand their potential impact, frequency in populations, and relevance to diseases.

### Requirements
Software: bwa (0.7.12), Picard (1.97), GATK (3.6), bamtools, R (3.2.2 for plots), samtools (0.1.19), Java JDK (for Picard and GATK), bcftools, annovar.

Hardware: Minimum of 16 GB RAM (40 GB for specific tasks), multicore CPU (16 ppn recommended).

Data: Reference genome (HG38), FASTQ files from sequencing, and additional reference files as specified in the variables script.

### Installation
Software Installation: Install all required software packages on your system. Most can be installed via package managers like apt for Linux or brew for macOS. For example, sudo apt-get install bwa for bwa.

Reference Genome Setup: Download the HG38 reference genome and its index files. Place these in a specified directory and ensure they are accessible to the scripts.

### Usage
Configuration: Edit the variables file to specify paths to your FASTQ files, reference genome, and other key parameters.

Running Scripts: Execute the scripts in order, starting with 1_ALIGN_BQRS_V4.0.sh. Use bash <script_name>.sh to run each script, ensuring all prerequisites are met.

Monitoring Progress: Check log files and console output for progress and any error messages.

### Configuration

Customize the pipeline to suit your data and computational resources by editing the `variables` script. This includes setting paths to FASTQ files, the reference genome, and specifying the sample ID. Adjust parameters like memory allocation and the number of threads according to your system's capabilities.

### Output

Each script generates specific output files, including aligned BAM files, sorted and deduplicated BAMs, recalibrated BAMs, and annotated VCF files. Final outputs are ready for downstream analysis, including variant interpretation and potential functional impacts, with intermediate files providing checkpoints for quality control.
