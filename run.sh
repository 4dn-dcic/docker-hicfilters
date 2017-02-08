#!/bin/sh

input_bam=$1
input_re_bed=$2
out_prefix=$3

filterHiCReads.py -i $input_bam -r $input_re_bed -o $out_prefix.ff.bam

