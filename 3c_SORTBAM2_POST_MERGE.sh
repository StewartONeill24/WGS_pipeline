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

# Sort BAM file
java -Xms12G -Xmx14G -jar /local/software/picard-tools/1.97/jarlib/SortSam.jar \
        INPUT="$sampleID"_primary_HG38_merged_aligned_sorted_marked_dups.bam \
        OUTPUT="$sampleID"_primary_HG38_merged_aligned_sorted_marked_dups.DelDup.bam  \
        SORT_ORDER=coordinate \
        TMP_DIR=tmp2 \
        VALIDATION_STRINGENCY=SILENT \
        MAX_RECORDS_IN_RAM=2000000


