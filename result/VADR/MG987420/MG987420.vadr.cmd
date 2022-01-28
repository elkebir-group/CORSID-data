rm -rf result/vadr/MG987420
mkdir result/vadr/MG987420
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/MG987420.fasta > result/vadr/MG987420/MG987420.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/MG987420/MG987420.vadr.in.fa > result/vadr/MG987420/MG987420.vadr.seqstat
sh result/vadr/MG987420/MG987420.annotate.1.sh > /dev/null 2> result/vadr/MG987420/MG987420.annotate.1.sh.err

cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.cmd > result/vadr/MG987420/MG987420.vadr.cmd.chunk
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.cmd
mkdir result/vadr/MG987420/MG987420.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/MG987420/MG987420.vadr.in.fa > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/MG987420/MG987420.1/MG987420.1.vadr.in.fa > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/MG987420/MG987420.1/MG987420.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.blastn.out --splus > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.tblout.sort
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cdt.NC_038294.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/MG987420/MG987420.1/MG987420.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.blastn.out --splus > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.tblout.sort
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cdt.NC_038294.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cdt.tblout.sort
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.a.subseq.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.glsearch.fa > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.stdout 2>result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.err
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.stdout > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.stdout
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.stdout
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.ifile > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.ifile
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.ifile
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.err > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.err
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.err
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.1.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.2.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.3.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.4.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.5.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.6.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.7.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.8.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.9.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.10.fa >> result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_038294.vadr.protein.fa -seg no -out result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.blastx.out > result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.blastx.summary.txt
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.in.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.in.fa.ssi result/vadr/MG987420/MG987420.1/MG987420.1.vadr.blastn.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.blastn.out result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.blastn.summary.txt result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.blastn.pretblout result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.tblout result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cls.tblout.sort result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cdt.NC_038294.tblout result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cdt.NC_038294.indel result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.cdt.tblout.sort result/vadr/MG987420/MG987420.1/MG987420.1.vadr.rpn.sub.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.blastn.out result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.blastn.summary.txt result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.blastn.pretblout result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.tblout result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cls.tblout.sort result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cdt.NC_038294.tblout result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cdt.NC_038294.indel result/vadr/MG987420/MG987420.1/MG987420.1.vadr.std.cdt.tblout.sort result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.glsearch.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.a.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.a.subseq.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.stk.1 result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r1.s0.stk.2 result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.ifile result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.stdout result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.jalign.ifile result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.1.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.1.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.2.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.2.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.3.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.3.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.4.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.4.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.5.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.5.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.6.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.6.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.7.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.7.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.8.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.8.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.9.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.gene.9.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.CDS.10.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.align.r3.s0.stk result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.pv.blastx.fa result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.blastx.out result/vadr/MG987420/MG987420.1/MG987420.1.vadr.NC_038294.blastx.summary.txt
# Mon Jan  3 11:07:13 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/MG987420/MG987420.vadr.cmd.chunk
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.pass.tbl > result/vadr/MG987420/MG987420.vadr.pass.tbl
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.pass.tbl
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.fail.tbl > result/vadr/MG987420/MG987420.vadr.fail.tbl
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.fail.tbl
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.pass.list > result/vadr/MG987420/MG987420.vadr.pass.list
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.pass.list
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.fail.list > result/vadr/MG987420/MG987420.vadr.fail.list
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.fail.list
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.alt.list > result/vadr/MG987420/MG987420.vadr.alt.list
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.alt.list
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.pass.fa > result/vadr/MG987420/MG987420.vadr.pass.fa
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.pass.fa
cat result/vadr/MG987420/MG987420.1/MG987420.1.vadr.fail.fa > result/vadr/MG987420/MG987420.vadr.fail.fa
rm  result/vadr/MG987420/MG987420.1/MG987420.1.vadr.fail.fa
rm  result/vadr/MG987420/MG987420.vadr.in.fa result/vadr/MG987420/MG987420.vadr.blastn.fa result/vadr/MG987420/MG987420.1.out result/vadr/MG987420/MG987420.annotate.2.sh result/vadr/MG987420/MG987420.annotate.3.sh result/vadr/MG987420/MG987420.annotate.4.sh result/vadr/MG987420/MG987420.annotate.5.sh result/vadr/MG987420/MG987420.annotate.6.sh result/vadr/MG987420/MG987420.annotate.7.sh result/vadr/MG987420/MG987420.annotate.8.sh result/vadr/MG987420/MG987420.annotate.1.sh result/vadr/MG987420/MG987420.annotate.1.sh.err result/vadr/MG987420/MG987420.vadr.cmd.chunk
rm result/vadr/MG987420/MG987420.1/*
rmdir result/vadr/MG987420/MG987420.1
# Mon Jan  3 11:07:14 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
