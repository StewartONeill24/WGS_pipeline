#!/bin/bash
#PBS -l nodes=1:ppn=16
#PBS -l walltime=10:00:00
cd $PBS_O_WORKDIR


################################################
# Include variables from file called "variables"
################################################

. variables


module load samtools/0.1.19
module load picard/1.97
module load jdk/1.8.0


# mark duplicates
java -Xms12G -Xmx14G -jar /local/software/picard-tools/1.97/jarlib/MarkDuplicates.jar \
        INPUT="$sampleID"_primary_HG38_merged_aligned_sorted.bam \
        METRICS_FILE=merged_dup_metrics \
        OUTPUT="$sampleID"_primary_HG38_merged_aligned_sorted_marked_dups.bam  \
        TMP_DIR=tmp1 \
        VALIDATION_STRINGENCY=SILENT


