cut -f 1-3 ../bed/chr4_100_mapped_reads.Aligned.out.bed > segments.bed
cut -f 1-3  ../macs_peaks/chr4_100_mapped_reads.Aligned.out_macs_peaks.narrowPeak > annotations.bed
cut -f 1-3  ../bedgraph/chr4_100_mapped_reads.Aligned.out.sorted.bedGraph > workspace.bed