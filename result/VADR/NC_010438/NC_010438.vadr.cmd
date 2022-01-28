rm -rf result/vadr/NC_010438
mkdir result/vadr/NC_010438
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/NC_010438.fasta > result/vadr/NC_010438/NC_010438.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/NC_010438/NC_010438.vadr.in.fa > result/vadr/NC_010438/NC_010438.vadr.seqstat
sh result/vadr/NC_010438/NC_010438.annotate.1.sh > /dev/null 2> result/vadr/NC_010438/NC_010438.annotate.1.sh.err

cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.cmd > result/vadr/NC_010438/NC_010438.vadr.cmd.chunk
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.cmd
mkdir result/vadr/NC_010438/NC_010438.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/NC_010438/NC_010438.vadr.in.fa > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.in.fa > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.blastn.out --splus > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.tblout.sort
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cdt.NC_010438.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.blastn.out --splus > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.tblout.sort
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cdt.NC_010438.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cdt.tblout.sort
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.1.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.2.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.3.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.4.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.5.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.6.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.7.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.8.fa >> result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_010438.vadr.protein.fa -seg no -out result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.blastx.out > result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.blastx.summary.txt
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.in.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.in.fa.ssi result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.blastn.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.blastn.out result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.blastn.summary.txt result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.blastn.pretblout result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.tblout result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cls.tblout.sort result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cdt.NC_010438.tblout result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cdt.NC_010438.indel result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.cdt.tblout.sort result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.rpn.sub.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.blastn.out result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.blastn.summary.txt result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.blastn.pretblout result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.tblout result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cls.tblout.sort result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cdt.NC_010438.tblout result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cdt.NC_010438.indel result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.std.cdt.tblout.sort result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.glsearch.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.a.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.jalign.ifile result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.gene.1.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.1.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.2.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.gene.2.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.3.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.gene.3.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.4.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.gene.4.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.5.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.gene.5.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.6.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.gene.6.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.7.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.gene.7.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.CDS.8.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.align.r3.s0.stk result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.pv.blastx.fa result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.blastx.out result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.NC_010438.blastx.summary.txt
# Mon Jan  3 11:06:09 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/NC_010438/NC_010438.vadr.cmd.chunk
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.pass.tbl > result/vadr/NC_010438/NC_010438.vadr.pass.tbl
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.pass.tbl
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.fail.tbl > result/vadr/NC_010438/NC_010438.vadr.fail.tbl
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.fail.tbl
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.pass.list > result/vadr/NC_010438/NC_010438.vadr.pass.list
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.pass.list
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.fail.list > result/vadr/NC_010438/NC_010438.vadr.fail.list
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.fail.list
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.alt.list > result/vadr/NC_010438/NC_010438.vadr.alt.list
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.alt.list
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.pass.fa > result/vadr/NC_010438/NC_010438.vadr.pass.fa
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.pass.fa
cat result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.fail.fa > result/vadr/NC_010438/NC_010438.vadr.fail.fa
rm  result/vadr/NC_010438/NC_010438.1/NC_010438.1.vadr.fail.fa
rm  result/vadr/NC_010438/NC_010438.vadr.in.fa result/vadr/NC_010438/NC_010438.vadr.blastn.fa result/vadr/NC_010438/NC_010438.1.out result/vadr/NC_010438/NC_010438.annotate.2.sh result/vadr/NC_010438/NC_010438.annotate.3.sh result/vadr/NC_010438/NC_010438.annotate.4.sh result/vadr/NC_010438/NC_010438.annotate.5.sh result/vadr/NC_010438/NC_010438.annotate.6.sh result/vadr/NC_010438/NC_010438.annotate.7.sh result/vadr/NC_010438/NC_010438.annotate.8.sh result/vadr/NC_010438/NC_010438.annotate.1.sh result/vadr/NC_010438/NC_010438.annotate.1.sh.err result/vadr/NC_010438/NC_010438.vadr.cmd.chunk
rm result/vadr/NC_010438/NC_010438.1/*
rmdir result/vadr/NC_010438/NC_010438.1
# Mon Jan  3 11:06:09 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
