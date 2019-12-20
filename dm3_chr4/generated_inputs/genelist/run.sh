#!/usr/bin/env bash
echo "Produce genelist file from GEEP results grouped by Isoforms"
cat ../geep/chr4_100_mapped_reads.Aligned.out.isoforms.csv | awk -F',' '{if(NR == 1) print "refseq_id\tgene_id\tchrom\ttxStart\ttxEnd\tstrand\tRPKM genelist"; else print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$8}' > chr4.isoforms.genelist.tsv
echo "Produce genelist BED file with unique gene id"
cat chr4.isoforms.genelist.tsv | grep -v "gene_id" | awk '{if (!x[$4]) print $3"\t"$4"\t"$5"\t"$2"\t"$7"\t"$6; x[$4]++}' > chr4.isoforms.genelist.bed
