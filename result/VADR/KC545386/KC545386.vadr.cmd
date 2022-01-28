rm -rf result/vadr/KC545386
mkdir result/vadr/KC545386
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/KC545386.fasta > result/vadr/KC545386/KC545386.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/KC545386/KC545386.vadr.in.fa > result/vadr/KC545386/KC545386.vadr.seqstat
sh result/vadr/KC545386/KC545386.annotate.1.sh > /dev/null 2> result/vadr/KC545386/KC545386.annotate.1.sh.err


ERROR in utl_RunCommand(), the following command failed:
sh result/vadr/KC545386/KC545386.annotate.1.sh > /dev/null 2> result/vadr/KC545386/KC545386.annotate.1.sh.err


[fail]
