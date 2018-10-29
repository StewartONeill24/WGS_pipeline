#!/bin/bash
#PBS -l nodes=1:ppn=16
#PBS -l walltime=20:00:00
#PBS -l mem=20gb
cd $PBS_O_WORKDIR


################################################
# Include variables from file called "variables"
################################################

. variables


module load bamtools

Lane01="/temp/hgig/EXOME_DATA/For_Stewart/Lane01/SOPR0402.GATK.recal.bam"
Lane02="/temp/hgig/EXOME_DATA/For_Stewart/Lane02/SOPR0402.GATK.recal.bam"
Lane03="/temp/hgig/EXOME_DATA/For_Stewart/Lane03/SOPR0402.GATK.recal.bam"
Lane04="/temp/hgig/EXOME_DATA/For_Stewart/Lane04/SOPR0402.GATK.recal.bam"
Lane05="/temp/hgig/EXOME_DATA/For_Stewart/Lane05/SOPR0402.GATK.recal.bam"
Lane06="/temp/hgig/EXOME_DATA/For_Stewart/Lane06/SOPR0402.GATK.recal.bam"
Lane07="/temp/hgig/EXOME_DATA/For_Stewart/Lane07/SOPR0402.GATK.recal.bam"
Lane08="/temp/hgig/EXOME_DATA/For_Stewart/Lane08/SOPR0402.GATK.recal.bam"



bamtools merge -in "$Lane01" -in "$Lane02" -in "$Lane03" -in "$Lane04" -in "$Lane05" -in "$Lane06" -in "$Lane07" -in "$Lane08"  -out "$sampleID"_primary_HG38.GATK.recal.bam
