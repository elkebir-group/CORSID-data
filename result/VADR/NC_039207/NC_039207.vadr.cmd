rm -rf result/vadr/NC_039207
mkdir result/vadr/NC_039207
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/NC_039207.fasta > result/vadr/NC_039207/NC_039207.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/NC_039207/NC_039207.vadr.in.fa > result/vadr/NC_039207/NC_039207.vadr.seqstat
sh result/vadr/NC_039207/NC_039207.annotate.1.sh > /dev/null 2> result/vadr/NC_039207/NC_039207.annotate.1.sh.err


ERROR in utl_RunCommand(), the following command failed:
sh result/vadr/NC_039207/NC_039207.annotate.1.sh > /dev/null 2> result/vadr/NC_039207/NC_039207.annotate.1.sh.err


[fail]
