#!/bin/bash
#PBS -l nodes=1:ppn=16
#PBS -l walltime=60:00:00
#PBS -l mem=40gb
#PBS -q highmem

cd $PBS_O_WORKDIR


################################################
# Include variables from file called "variables"
################################################

. variables


module load samtools/0.1.19
module load picard/1.97
module load jdk/1.8.0

# Fix mate pair information by picard
java -Xms12G -Xmx14G -jar /local/software/picard-tools/1.97/jarlib/FixMateInformation.jar \
        INPUT="$sampleID"_primary_HG38_merged_aligned_sorted_marked_dups.DelDup.bam  \
        OUTPUT="$sampleID"_primary_HG38_merged.GATK.fixedmateinfo.bam \
        SORT_ORDER=coordinate \
        TMP_DIR=tmp2 \
        VALIDATION_STRINGENCY=SILENT \
        MAX_RECORDS_IN_RAM=500000 \
        CREATE_INDEX=true

rm -rf tmp1 tmp2 tmp3
