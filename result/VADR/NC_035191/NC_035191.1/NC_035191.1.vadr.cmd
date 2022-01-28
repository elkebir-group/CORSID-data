mkdir result/vadr/NC_035191/NC_035191.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/NC_035191/NC_035191.vadr.in.fa > result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.in.fa > result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.rpn.cls.blastn.out --splus > result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.rpn.cls.blastn.summary.txt

ERROR in utl_RunCommand(), the following command failed:
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.rpn.cls.blastn.out --splus > result/vadr/NC_035191/NC_035191.1/NC_035191.1.vadr.rpn.cls.blastn.summary.txt

[fail]
