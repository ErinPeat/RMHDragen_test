use strict;
use Getopt::Long;

# variables needed:
my $output_script = '';					# path to write the bwa job script
my $num_cpu = 6; 					# default number of cpus
my $ref_fasta = '';					# path to reference fasta
my $analysis_dir = '';					# path to analysis folder
my $fastq_dir = '';					# path to fastq folder
my $samp_id = '';					# sample ID
my $seq_plat = 'Illumina';				# platform of sequencing, default:illumina
my $barcode_seq = 'NNNNNNN'; 				# barcode seq for RGPU=CTTGTA
my $java_tmp = '';					# temp folder for java
my $rm_dups='true';					# remove PCR duplicates
my $java_mem=30;					# default memory for java.
my $java_cpu=2;						# default CPU numbers for java.
my $picard='';						# path to picard
my $umi='none';						# $umi taking information from individual UMI information: none, IDT, Q33, Avenio
my $seq_type='capture';					# $umi taking information from Seq_type: capture,amplicon, wgs, lcwgs, umi or cfDNA
my $run_type ='none'; 					# 0 for non-umi run, 1 for umi run;
my $args = scalar(@ARGV);
my $run_type ="none"; 