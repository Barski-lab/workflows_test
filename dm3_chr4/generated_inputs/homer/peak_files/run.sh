#!/usr/bin/env bash
echo "Produce Homer Peak file from GEEP results grouped by GeneId"
cat ../../geep/chr4_100_mapped_reads.Aligned.out.genes.csv | grep -v "TxStart" | awk -F',' '{print NR"\t"$3"\t"$4"\t"$5"\t"$6}' > chr4.genes.peak.tsv
echo "Center on TSS"
cat chr4.genes.peak.tsv | awk '{tss=$3; if ($5 == "-") tss=$4; print $1"\t"$2"\t"tss"\t"tss"\t"$5}' > chr4.tss.peak.tsv
