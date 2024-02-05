# WGS_pipeline

This repository encompasses a set of shell scripts designed for the end-to-end processing of whole genome sequencing data, starting from raw FASTQ files to the annotated list of variants. The pipeline employs widely-used bioinformatics tools like bwa, Picard, GATK, and bamtools, alongside custom filtering and annotation steps to ensure high-quality, reliable variant identification and annotation. Each script is modular, allowing for customization based on specific project requirements or data characteristics.

The pipeline operates in several distinct stages:

Alignment and Base Quality Score Recalibration: Aligning sequencing reads to a reference genome and optimizing quality scores to account for systematic errors in sequencing.

Merging and Post-processing: Combining data from multiple sequencing lanes, followed by sorting, duplicate marking, and indexing to prepare for variant calling.

Variant Calling: Identifying variants from the processed sequencing data using statistical models to distinguish true variants from sequencing errors.

Annotation: Enriching variants with information from various databases to understand their potential impact, frequency in populations, and relevance to diseases.
