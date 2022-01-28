rm -rf result/vadr/KC140102
mkdir result/vadr/KC140102
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/KC140102.fasta > result/vadr/KC140102/KC140102.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/KC140102/KC140102.vadr.in.fa > result/vadr/KC140102/KC140102.vadr.seqstat
sh result/vadr/KC140102/KC140102.annotate.1.sh > /dev/null 2> result/vadr/KC140102/KC140102.annotate.1.sh.err

cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.cmd > result/vadr/KC140102/KC140102.vadr.cmd.chunk
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.cmd
mkdir result/vadr/KC140102/KC140102.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/KC140102/KC140102.vadr.in.fa > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/KC140102/KC140102.1/KC140102.1.vadr.in.fa > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/KC140102/KC140102.1/KC140102.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.blastn.out --splus > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.tblout.sort
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cdt.NC_003436.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/KC140102/KC140102.1/KC140102.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.blastn.out --splus > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.tblout.sort
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cdt.NC_003436.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cdt.tblout.sort
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.a.subseq.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.glsearch.fa > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.stdout 2>result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.err
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.stdout > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.stdout
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.stdout
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.ifile > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.ifile
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.ifile
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.err > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.err
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.err
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.1.fa >> result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.2.fa >> result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.3.fa >> result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.4.fa >> result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.5.fa >> result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.6.fa >> result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_003436.vadr.protein.fa -seg no -out result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.blastx.out > result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.blastx.summary.txt
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.in.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.in.fa.ssi result/vadr/KC140102/KC140102.1/KC140102.1.vadr.blastn.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.blastn.out result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.blastn.summary.txt result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.blastn.pretblout result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.tblout result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cls.tblout.sort result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cdt.NC_003436.tblout result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cdt.NC_003436.indel result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.cdt.tblout.sort result/vadr/KC140102/KC140102.1/KC140102.1.vadr.rpn.sub.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.blastn.out result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.blastn.summary.txt result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.blastn.pretblout result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.tblout result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cls.tblout.sort result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cdt.NC_003436.tblout result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cdt.NC_003436.indel result/vadr/KC140102/KC140102.1/KC140102.1.vadr.std.cdt.tblout.sort result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.glsearch.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.a.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.a.subseq.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.stk.1 result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r1.s0.stk.2 result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.ifile result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.stdout result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.jalign.ifile result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.gene.1.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.1.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.gene.2.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.2.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.gene.3.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.3.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.gene.4.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.4.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.gene.5.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.5.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.gene.6.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.CDS.6.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.1.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.2.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.3.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.4.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.5.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.6.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.7.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.8.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.9.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.10.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.11.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.12.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.mat_peptide.13.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.align.r3.s0.stk result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.pv.blastx.fa result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.blastx.out result/vadr/KC140102/KC140102.1/KC140102.1.vadr.NC_003436.blastx.summary.txt
# Mon Jan  3 11:01:45 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/KC140102/KC140102.vadr.cmd.chunk
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.pass.tbl > result/vadr/KC140102/KC140102.vadr.pass.tbl
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.pass.tbl
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.fail.tbl > result/vadr/KC140102/KC140102.vadr.fail.tbl
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.fail.tbl
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.pass.list > result/vadr/KC140102/KC140102.vadr.pass.list
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.pass.list
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.fail.list > result/vadr/KC140102/KC140102.vadr.fail.list
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.fail.list
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.alt.list > result/vadr/KC140102/KC140102.vadr.alt.list
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.alt.list
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.pass.fa > result/vadr/KC140102/KC140102.vadr.pass.fa
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.pass.fa
cat result/vadr/KC140102/KC140102.1/KC140102.1.vadr.fail.fa > result/vadr/KC140102/KC140102.vadr.fail.fa
rm  result/vadr/KC140102/KC140102.1/KC140102.1.vadr.fail.fa
rm  result/vadr/KC140102/KC140102.vadr.in.fa result/vadr/KC140102/KC140102.vadr.blastn.fa result/vadr/KC140102/KC140102.1.out result/vadr/KC140102/KC140102.annotate.2.sh result/vadr/KC140102/KC140102.annotate.3.sh result/vadr/KC140102/KC140102.annotate.4.sh result/vadr/KC140102/KC140102.annotate.5.sh result/vadr/KC140102/KC140102.annotate.6.sh result/vadr/KC140102/KC140102.annotate.7.sh result/vadr/KC140102/KC140102.annotate.8.sh result/vadr/KC140102/KC140102.annotate.1.sh result/vadr/KC140102/KC140102.annotate.1.sh.err result/vadr/KC140102/KC140102.vadr.cmd.chunk
rm result/vadr/KC140102/KC140102.1/*
rmdir result/vadr/KC140102/KC140102.1
# Mon Jan  3 11:01:45 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
