rm -rf result/vadr/JQ173883
mkdir result/vadr/JQ173883
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/JQ173883.fasta > result/vadr/JQ173883/JQ173883.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/JQ173883/JQ173883.vadr.in.fa > result/vadr/JQ173883/JQ173883.vadr.seqstat
sh result/vadr/JQ173883/JQ173883.annotate.1.sh > /dev/null 2> result/vadr/JQ173883/JQ173883.annotate.1.sh.err

cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.cmd > result/vadr/JQ173883/JQ173883.vadr.cmd.chunk
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.cmd
mkdir result/vadr/JQ173883/JQ173883.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/JQ173883/JQ173883.vadr.in.fa > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.in.fa > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.blastn.out --splus > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.tblout.sort
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cdt.NC_001846.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.blastn.out --splus > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.tblout.sort
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cdt.NC_001846.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cdt.tblout.sort
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.a.subseq.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.glsearch.fa > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.stdout 2>result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.err
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.stdout > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.stdout
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.stdout
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.ifile > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.ifile
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.ifile
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.err > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.err
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.err
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.1.fa >> result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.pv.blastx.fa
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.2.fa >> result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.pv.blastx.fa
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.3.fa >> result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.pv.blastx.fa
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.4.fa >> result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.pv.blastx.fa
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.5.fa >> result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_001846.vadr.protein.fa -seg no -out result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.blastx.out > result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.blastx.summary.txt
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.in.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.in.fa.ssi result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.blastn.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.blastn.out result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.blastn.summary.txt result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.blastn.pretblout result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.tblout result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cls.tblout.sort result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cdt.NC_001846.tblout result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cdt.NC_001846.indel result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.cdt.tblout.sort result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.rpn.sub.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.blastn.out result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.blastn.summary.txt result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.blastn.pretblout result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.tblout result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cls.tblout.sort result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cdt.NC_001846.tblout result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cdt.NC_001846.indel result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.std.cdt.tblout.sort result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.glsearch.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.a.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.a.subseq.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.stk.1 result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r1.s0.stk.2 result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.ifile result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.stdout result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.jalign.ifile result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.gene.1.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.1.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.2.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.gene.2.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.3.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.gene.3.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.4.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.gene.4.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.CDS.5.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.align.r3.s0.stk result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.pv.blastx.fa result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.blastx.out result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.NC_001846.blastx.summary.txt
# Mon Jan  3 10:51:24 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/JQ173883/JQ173883.vadr.cmd.chunk
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.pass.tbl > result/vadr/JQ173883/JQ173883.vadr.pass.tbl
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.pass.tbl
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.fail.tbl > result/vadr/JQ173883/JQ173883.vadr.fail.tbl
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.fail.tbl
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.pass.list > result/vadr/JQ173883/JQ173883.vadr.pass.list
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.pass.list
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.fail.list > result/vadr/JQ173883/JQ173883.vadr.fail.list
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.fail.list
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.alt.list > result/vadr/JQ173883/JQ173883.vadr.alt.list
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.alt.list
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.pass.fa > result/vadr/JQ173883/JQ173883.vadr.pass.fa
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.pass.fa
cat result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.fail.fa > result/vadr/JQ173883/JQ173883.vadr.fail.fa
rm  result/vadr/JQ173883/JQ173883.1/JQ173883.1.vadr.fail.fa
rm  result/vadr/JQ173883/JQ173883.vadr.in.fa result/vadr/JQ173883/JQ173883.vadr.blastn.fa result/vadr/JQ173883/JQ173883.1.out result/vadr/JQ173883/JQ173883.annotate.2.sh result/vadr/JQ173883/JQ173883.annotate.3.sh result/vadr/JQ173883/JQ173883.annotate.4.sh result/vadr/JQ173883/JQ173883.annotate.5.sh result/vadr/JQ173883/JQ173883.annotate.6.sh result/vadr/JQ173883/JQ173883.annotate.7.sh result/vadr/JQ173883/JQ173883.annotate.8.sh result/vadr/JQ173883/JQ173883.annotate.1.sh result/vadr/JQ173883/JQ173883.annotate.1.sh.err result/vadr/JQ173883/JQ173883.vadr.cmd.chunk
rm result/vadr/JQ173883/JQ173883.1/*
rmdir result/vadr/JQ173883/JQ173883.1
# Mon Jan  3 10:51:24 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
