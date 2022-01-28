rm -rf result/vadr/MN996532
mkdir result/vadr/MN996532
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/MN996532.fasta > result/vadr/MN996532/MN996532.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/MN996532/MN996532.vadr.in.fa > result/vadr/MN996532/MN996532.vadr.seqstat
sh result/vadr/MN996532/MN996532.annotate.1.sh > /dev/null 2> result/vadr/MN996532/MN996532.annotate.1.sh.err

cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.cmd > result/vadr/MN996532/MN996532.vadr.cmd.chunk
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.cmd
mkdir result/vadr/MN996532/MN996532.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/MN996532/MN996532.vadr.in.fa > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/MN996532/MN996532.1/MN996532.1.vadr.in.fa > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/MN996532/MN996532.1/MN996532.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.blastn.out --splus > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.tblout.sort
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cdt.NC_045512.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/MN996532/MN996532.1/MN996532.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.blastn.out --splus > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.tblout.sort
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cdt.NC_045512.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cdt.tblout.sort
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.a.subseq.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.glsearch.fa > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.stdout 2>result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.err
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.stdout > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.stdout
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.stdout
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.ifile > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.ifile
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.ifile
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.err > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.err
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.err
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.1.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.2.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.3.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.4.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.5.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.6.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.7.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.8.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.9.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.10.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.11.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.12.fa >> result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_045512.vadr.protein.fa -seg no -out result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.blastx.out > result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.blastx.summary.txt
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.in.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.in.fa.ssi result/vadr/MN996532/MN996532.1/MN996532.1.vadr.blastn.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.blastn.out result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.blastn.summary.txt result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.blastn.pretblout result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.tblout result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cls.tblout.sort result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cdt.NC_045512.tblout result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cdt.NC_045512.indel result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.cdt.tblout.sort result/vadr/MN996532/MN996532.1/MN996532.1.vadr.rpn.sub.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.blastn.out result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.blastn.summary.txt result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.blastn.pretblout result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.tblout result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cls.tblout.sort result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cdt.NC_045512.tblout result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cdt.NC_045512.indel result/vadr/MN996532/MN996532.1/MN996532.1.vadr.std.cdt.tblout.sort result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.glsearch.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.a.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.a.subseq.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.stk.1 result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r1.s0.stk.2 result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.ifile result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.stdout result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.jalign.ifile result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.1.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.1.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.2.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.2.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.3.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.3.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.4.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.4.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.5.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.5.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.6.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.6.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.7.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.7.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.8.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.8.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.9.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.9.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.10.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.10.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.11.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.gene.11.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.CDS.12.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.1.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.2.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.3.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.4.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.5.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.6.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.7.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.8.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.9.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.10.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.11.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.12.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.13.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.14.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.15.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.16.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.17.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.18.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.19.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.20.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.21.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.22.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.23.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.24.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.25.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.mat_peptide.26.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.stem_loop.1.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.stem_loop.2.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.stem_loop.3.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.stem_loop.4.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.stem_loop.5.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.align.r3.s0.stk result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.pv.blastx.fa result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.blastx.out result/vadr/MN996532/MN996532.1/MN996532.1.vadr.NC_045512.blastx.summary.txt
# Mon Jan  3 10:44:31 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/MN996532/MN996532.vadr.cmd.chunk
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.pass.tbl > result/vadr/MN996532/MN996532.vadr.pass.tbl
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.pass.tbl
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.fail.tbl > result/vadr/MN996532/MN996532.vadr.fail.tbl
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.fail.tbl
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.pass.list > result/vadr/MN996532/MN996532.vadr.pass.list
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.pass.list
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.fail.list > result/vadr/MN996532/MN996532.vadr.fail.list
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.fail.list
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.alt.list > result/vadr/MN996532/MN996532.vadr.alt.list
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.alt.list
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.pass.fa > result/vadr/MN996532/MN996532.vadr.pass.fa
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.pass.fa
cat result/vadr/MN996532/MN996532.1/MN996532.1.vadr.fail.fa > result/vadr/MN996532/MN996532.vadr.fail.fa
rm  result/vadr/MN996532/MN996532.1/MN996532.1.vadr.fail.fa
rm  result/vadr/MN996532/MN996532.vadr.in.fa result/vadr/MN996532/MN996532.vadr.blastn.fa result/vadr/MN996532/MN996532.1.out result/vadr/MN996532/MN996532.annotate.2.sh result/vadr/MN996532/MN996532.annotate.3.sh result/vadr/MN996532/MN996532.annotate.4.sh result/vadr/MN996532/MN996532.annotate.5.sh result/vadr/MN996532/MN996532.annotate.6.sh result/vadr/MN996532/MN996532.annotate.7.sh result/vadr/MN996532/MN996532.annotate.8.sh result/vadr/MN996532/MN996532.annotate.1.sh result/vadr/MN996532/MN996532.annotate.1.sh.err result/vadr/MN996532/MN996532.vadr.cmd.chunk
rm result/vadr/MN996532/MN996532.1/*
rmdir result/vadr/MN996532/MN996532.1
# Mon Jan  3 10:44:31 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]