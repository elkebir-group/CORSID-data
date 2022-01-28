rm -rf result/vadr/KU182965
mkdir result/vadr/KU182965
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/KU182965.fasta > result/vadr/KU182965/KU182965.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/KU182965/KU182965.vadr.in.fa > result/vadr/KU182965/KU182965.vadr.seqstat
sh result/vadr/KU182965/KU182965.annotate.1.sh > /dev/null 2> result/vadr/KU182965/KU182965.annotate.1.sh.err

cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.cmd > result/vadr/KU182965/KU182965.vadr.cmd.chunk
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.cmd
mkdir result/vadr/KU182965/KU182965.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/KU182965/KU182965.vadr.in.fa > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/KU182965/KU182965.1/KU182965.1.vadr.in.fa > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/KU182965/KU182965.1/KU182965.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.blastn.out --splus > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.tblout.sort
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cdt.NC_009019.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/KU182965/KU182965.1/KU182965.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.blastn.out --splus > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.tblout.sort
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cdt.NC_009019.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cdt.tblout.sort
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.a.subseq.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.glsearch.fa > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.stdout 2>result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.err
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.stdout > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.stdout
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.stdout
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.ifile > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.ifile
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.ifile
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.err > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.err
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.err
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.1.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.2.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.3.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.4.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.5.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.6.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.7.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.8.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.9.fa >> result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_009019.vadr.protein.fa -seg no -out result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.blastx.out > result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.blastx.summary.txt
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.in.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.in.fa.ssi result/vadr/KU182965/KU182965.1/KU182965.1.vadr.blastn.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.blastn.out result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.blastn.summary.txt result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.blastn.pretblout result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.tblout result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cls.tblout.sort result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cdt.NC_009019.tblout result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cdt.NC_009019.indel result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.cdt.tblout.sort result/vadr/KU182965/KU182965.1/KU182965.1.vadr.rpn.sub.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.blastn.out result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.blastn.summary.txt result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.blastn.pretblout result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.tblout result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cls.tblout.sort result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cdt.NC_009019.tblout result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cdt.NC_009019.indel result/vadr/KU182965/KU182965.1/KU182965.1.vadr.std.cdt.tblout.sort result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.glsearch.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.a.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.a.subseq.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.stk.1 result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r1.s0.stk.2 result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.ifile result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.stdout result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.jalign.ifile result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.1.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.1.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.2.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.2.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.3.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.3.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.4.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.4.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.5.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.5.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.6.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.6.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.7.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.7.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.8.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.8.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.gene.9.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.CDS.9.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.align.r3.s0.stk result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.pv.blastx.fa result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.blastx.out result/vadr/KU182965/KU182965.1/KU182965.1.vadr.NC_009019.blastx.summary.txt
# Mon Jan  3 11:26:46 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/KU182965/KU182965.vadr.cmd.chunk
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.pass.tbl > result/vadr/KU182965/KU182965.vadr.pass.tbl
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.pass.tbl
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.fail.tbl > result/vadr/KU182965/KU182965.vadr.fail.tbl
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.fail.tbl
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.pass.list > result/vadr/KU182965/KU182965.vadr.pass.list
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.pass.list
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.fail.list > result/vadr/KU182965/KU182965.vadr.fail.list
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.fail.list
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.alt.list > result/vadr/KU182965/KU182965.vadr.alt.list
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.alt.list
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.pass.fa > result/vadr/KU182965/KU182965.vadr.pass.fa
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.pass.fa
cat result/vadr/KU182965/KU182965.1/KU182965.1.vadr.fail.fa > result/vadr/KU182965/KU182965.vadr.fail.fa
rm  result/vadr/KU182965/KU182965.1/KU182965.1.vadr.fail.fa
rm  result/vadr/KU182965/KU182965.vadr.in.fa result/vadr/KU182965/KU182965.vadr.blastn.fa result/vadr/KU182965/KU182965.1.out result/vadr/KU182965/KU182965.annotate.2.sh result/vadr/KU182965/KU182965.annotate.3.sh result/vadr/KU182965/KU182965.annotate.4.sh result/vadr/KU182965/KU182965.annotate.5.sh result/vadr/KU182965/KU182965.annotate.6.sh result/vadr/KU182965/KU182965.annotate.7.sh result/vadr/KU182965/KU182965.annotate.8.sh result/vadr/KU182965/KU182965.annotate.1.sh result/vadr/KU182965/KU182965.annotate.1.sh.err result/vadr/KU182965/KU182965.vadr.cmd.chunk
rm result/vadr/KU182965/KU182965.1/*
rmdir result/vadr/KU182965/KU182965.1
# Mon Jan  3 11:26:47 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
