rm -rf result/vadr/NC_035191
mkdir result/vadr/NC_035191
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/NC_035191.fasta > result/vadr/NC_035191/NC_035191.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/NC_035191/NC_035191.vadr.in.fa > result/vadr/NC_035191/NC_035191.vadr.seqstat
sh result/vadr/NC_035191/NC_035191.annotate.1.sh > /dev/null 2> result/vadr/NC_035191/NC_035191.annotate.1.sh.err


ERROR in utl_RunCommand(), the following command failed:
sh result/vadr/NC_035191/NC_035191.annotate.1.sh > /dev/null 2> result/vadr/NC_035191/NC_035191.annotate.1.sh.err


[fail]
