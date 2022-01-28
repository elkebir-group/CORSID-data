rm -rf result/vadr/KR270796
mkdir result/vadr/KR270796
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/KR270796.fasta > result/vadr/KR270796/KR270796.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/KR270796/KR270796.vadr.in.fa > result/vadr/KR270796/KR270796.vadr.seqstat
sh result/vadr/KR270796/KR270796.annotate.1.sh > /dev/null 2> result/vadr/KR270796/KR270796.annotate.1.sh.err

cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.cmd > result/vadr/KR270796/KR270796.vadr.cmd.chunk
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.cmd
mkdir result/vadr/KR270796/KR270796.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/KR270796/KR270796.vadr.in.fa > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/KR270796/KR270796.1/KR270796.1.vadr.in.fa > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/KR270796/KR270796.1/KR270796.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.blastn.out --splus > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.tblout.sort
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cdt.NC_028806.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/KR270796/KR270796.1/KR270796.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.blastn.out --splus > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.tblout.sort
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cdt.NC_028806.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cdt.tblout.sort
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.a.subseq.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.glsearch.fa > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.stdout 2>result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.err
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.stdout > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.stdout
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.stdout
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.ifile > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.ifile
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.ifile
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.err > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.err
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.err
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.a.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.glsearch.fa > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.stdout 2>result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.err
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.stdout > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.stdout
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.stdout
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.ifile > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.ifile
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.ifile
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.err > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.err
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.err
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.ifile >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.jalign.ifile
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.1.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.2.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.3.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.4.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.5.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.6.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.7.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.8.fa >> result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_028806.vadr.protein.fa -seg no -out result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.blastx.out > result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.blastx.summary.txt
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.in.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.in.fa.ssi result/vadr/KR270796/KR270796.1/KR270796.1.vadr.blastn.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.blastn.out result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.blastn.summary.txt result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.blastn.pretblout result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.tblout result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cls.tblout.sort result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cdt.NC_028806.tblout result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cdt.NC_028806.indel result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.cdt.tblout.sort result/vadr/KR270796/KR270796.1/KR270796.1.vadr.rpn.sub.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.blastn.out result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.blastn.summary.txt result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.blastn.pretblout result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.tblout result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cls.tblout.sort result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cdt.NC_028806.tblout result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cdt.NC_028806.indel result/vadr/KR270796/KR270796.1/KR270796.1.vadr.std.cdt.tblout.sort result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.glsearch.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.a.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.a.subseq.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.stk.1 result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.r1.s0.stk.2 result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.ifile result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.align.stdout result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.jalign.ifile result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.1.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.1.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.2.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.3.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.2.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.4.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.3.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.5.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.4.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.6.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.5.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.7.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.6.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.8.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.7.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.gene.9.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.CDS.8.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.uj.align.r1.s0.stk.1 result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.pv.blastx.fa result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.blastx.out result/vadr/KR270796/KR270796.1/KR270796.1.vadr.NC_028806.blastx.summary.txt
# Mon Jan  3 11:28:34 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/KR270796/KR270796.vadr.cmd.chunk
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.pass.tbl > result/vadr/KR270796/KR270796.vadr.pass.tbl
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.pass.tbl
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.fail.tbl > result/vadr/KR270796/KR270796.vadr.fail.tbl
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.fail.tbl
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.pass.list > result/vadr/KR270796/KR270796.vadr.pass.list
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.pass.list
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.fail.list > result/vadr/KR270796/KR270796.vadr.fail.list
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.fail.list
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.alt.list > result/vadr/KR270796/KR270796.vadr.alt.list
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.alt.list
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.pass.fa > result/vadr/KR270796/KR270796.vadr.pass.fa
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.pass.fa
cat result/vadr/KR270796/KR270796.1/KR270796.1.vadr.fail.fa > result/vadr/KR270796/KR270796.vadr.fail.fa
rm  result/vadr/KR270796/KR270796.1/KR270796.1.vadr.fail.fa
rm  result/vadr/KR270796/KR270796.vadr.in.fa result/vadr/KR270796/KR270796.vadr.blastn.fa result/vadr/KR270796/KR270796.1.out result/vadr/KR270796/KR270796.annotate.2.sh result/vadr/KR270796/KR270796.annotate.3.sh result/vadr/KR270796/KR270796.annotate.4.sh result/vadr/KR270796/KR270796.annotate.5.sh result/vadr/KR270796/KR270796.annotate.6.sh result/vadr/KR270796/KR270796.annotate.7.sh result/vadr/KR270796/KR270796.annotate.8.sh result/vadr/KR270796/KR270796.annotate.1.sh result/vadr/KR270796/KR270796.annotate.1.sh.err result/vadr/KR270796/KR270796.vadr.cmd.chunk
rm result/vadr/KR270796/KR270796.1/*
rmdir result/vadr/KR270796/KR270796.1
# Mon Jan  3 11:28:34 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
