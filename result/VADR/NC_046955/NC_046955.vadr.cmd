rm -rf result/vadr/NC_046955
mkdir result/vadr/NC_046955
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta ../genbank/NC_046955.fasta > result/vadr/NC_046955/NC_046955.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/NC_046955/NC_046955.vadr.in.fa > result/vadr/NC_046955/NC_046955.vadr.seqstat
sh result/vadr/NC_046955/NC_046955.annotate.1.sh > /dev/null 2> result/vadr/NC_046955/NC_046955.annotate.1.sh.err

cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.cmd > result/vadr/NC_046955/NC_046955.vadr.cmd.chunk
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.cmd
mkdir result/vadr/NC_046955/NC_046955.1
/scratch/software/vadr-install-dir/infernal/binaries/esl-reformat fasta result/vadr/NC_046955/NC_046955.vadr.in.fa > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.in.fa
/scratch/software/vadr-install-dir/infernal/binaries/esl-seqstat --dna -a result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.in.fa > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.seqstat
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.blastn.out --splus > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.blastn.summary.txt
grep -v ^# result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.tblout.sort
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cdt.NC_035191.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cdt.tblout.sort
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastn -num_threads 1 -query result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.blastn.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/corona.fa -out result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.blastn.out -word_size 7 -reward 1 -penalty -2 -xdrop_gap_final 110 -gapopen 2 -gapextend 1
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program n --input result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.blastn.out --splus > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.blastn.summary.txt
grep -v ^# result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.tblout | sed 's/  */ /g' | sort -k 1,1 -k 3,3rn > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.tblout.sort
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cdt.NC_035191.tblout | grep -v ^# | sed 's/  */ /g' | sort -k 1,1 -k 15,15rn -k 16,16g > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cdt.tblout.sort
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.a.subseq.fa | /scratch/software/vadr-install-dir/fasta/bin/glsearch36 -r +5/-3 -f -17 -g -4 -T 1 -m 3,9C -z -1 -n -3 -d 1 - result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.glsearch.fa > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.stdout 2>result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.err
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.stdout > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.stdout
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.stdout
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.ifile > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.ifile
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.ifile
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.err > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.err
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.err
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.1.fa >> result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.pv.blastx.fa
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.2.fa >> result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.pv.blastx.fa
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.3.fa >> result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.pv.blastx.fa
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.4.fa >> result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.pv.blastx.fa
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.5.fa >> result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.pv.blastx.fa
/scratch/software/vadr-install-dir/ncbi-blast/bin/blastx -num_threads 1 -num_alignments 20 -query result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.pv.blastx.fa -db /scratch/data/covid19-2/find_core/vadr/vadr-models-corona-1.3-3/NC_035191.vadr.protein.fa -seg no -out result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.blastx.out
/scratch/software/vadr-install-dir/vadr/parse_blast.pl --program x --input result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.blastx.out > result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.blastx.summary.txt
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.in.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.in.fa.ssi result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.blastn.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.blastn.out result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.blastn.summary.txt result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.blastn.pretblout result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.tblout result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cls.tblout.sort result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cdt.NC_035191.tblout result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cdt.NC_035191.indel result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.cdt.tblout.sort result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.rpn.sub.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.blastn.out result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.blastn.summary.txt result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.blastn.pretblout result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.tblout result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cls.tblout.sort result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cdt.NC_035191.tblout result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cdt.NC_035191.indel result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.std.cdt.tblout.sort result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.glsearch.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.a.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.a.subseq.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r1.s0.stk.1 result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.ifile result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.stdout result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.jalign.ifile result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.gene.1.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.1.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.gene.2.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.2.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.gene.3.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.3.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.gene.4.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.4.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.gene.5.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.CDS.5.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.align.r3.s0.stk result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.pv.blastx.fa result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.blastx.out result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.NC_035191.blastx.summary.txt
# Mon Jan  3 11:03:01 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
cat result/vadr/NC_046955/NC_046955.vadr.cmd.chunk
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.pass.tbl > result/vadr/NC_046955/NC_046955.vadr.pass.tbl
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.pass.tbl
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.fail.tbl > result/vadr/NC_046955/NC_046955.vadr.fail.tbl
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.fail.tbl
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.pass.list > result/vadr/NC_046955/NC_046955.vadr.pass.list
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.pass.list
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.fail.list > result/vadr/NC_046955/NC_046955.vadr.fail.list
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.fail.list
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.alt.list > result/vadr/NC_046955/NC_046955.vadr.alt.list
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.alt.list
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.pass.fa > result/vadr/NC_046955/NC_046955.vadr.pass.fa
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.pass.fa
cat result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.fail.fa > result/vadr/NC_046955/NC_046955.vadr.fail.fa
rm  result/vadr/NC_046955/NC_046955.1/NC_046955.1.vadr.fail.fa
rm  result/vadr/NC_046955/NC_046955.vadr.in.fa result/vadr/NC_046955/NC_046955.vadr.blastn.fa result/vadr/NC_046955/NC_046955.1.out result/vadr/NC_046955/NC_046955.annotate.2.sh result/vadr/NC_046955/NC_046955.annotate.3.sh result/vadr/NC_046955/NC_046955.annotate.4.sh result/vadr/NC_046955/NC_046955.annotate.5.sh result/vadr/NC_046955/NC_046955.annotate.6.sh result/vadr/NC_046955/NC_046955.annotate.7.sh result/vadr/NC_046955/NC_046955.annotate.8.sh result/vadr/NC_046955/NC_046955.annotate.1.sh result/vadr/NC_046955/NC_046955.annotate.1.sh.err result/vadr/NC_046955/NC_046955.vadr.cmd.chunk
rm result/vadr/NC_046955/NC_046955.1/*
rmdir result/vadr/NC_046955/NC_046955.1
# Mon Jan  3 11:03:01 CST 2022
# Linux ada.cs.illinois.edu 3.10.0-1160.21.1.el7.x86_64 #1 SMP Tue Mar 16 18:28:22 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
[ok]
