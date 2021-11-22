configfile: "run.yaml"

rule all:
    input:
        # expand("result2/CORSID/{sample}.json", sample=config["accession"]),
        # expand("result2/CORSID_A/{sample}.json", sample=config["accession"]),
        # expand("result2/Glimmer3/{sample}/{sample}.predict", sample=config["accession"]),
        # expand("result2/Prodigal/{sample}/{sample}.gene", sample=config["accession"]),
        expand("result2/MEME/{sample}/meme.html", sample=config["accession"]),

rule corsid:
    input:
        fasta="data/fasta/{sample}.fasta",
        gff="data/gff/{sample}.gff",
    params:
        name="{sample}",
    output: 
        txt="result2/CORSID/{sample}.txt",
        json="result2/CORSID/{sample}.json",
    log: "result2/CORSID/{sample}.log"
    shell:
        "corsid -f {input.fasta} -g {input.gff} -n {params.name} "
        "-o {output.json} > {output.txt} 2> {log}"

rule corsid_annot:
    input:
        fasta="data/fasta/{sample}.fasta",
        gff="data/gff/{sample}.gff",
    params:
        name="{sample}",
    output: 
        txt="result2/CORSID_A/{sample}.txt",
        json="result2/CORSID_A/{sample}.json",
    log: "result2/CORSID_A/{sample}.log"
    shell:
        "corsid -f {input.fasta} -g {input.gff} -n {params.name} "
        "-o {output.json} > {output.txt} 2> {log}"

##############
# Glimmer3
##############

rule glimmer_long_orfs:
    input:
        fasta="data/fasta/{sample}.fasta",
    output: "result2/Glimmer3/{sample}/{sample}.longorfs"
    log: "result2/Glimmer3/{sample}/{sample}.log"
    shell:
        "long-orfs -n -t 1.15 {input.fasta} {output} &> {log}"

rule glimmer_extract:
    input:
        fasta="data/fasta/{sample}.fasta",
        longorfs="result2/Glimmer3/{sample}/{sample}.longorfs"
    output: "result2/Glimmer3/{sample}/{sample}.train"
    log: "result2/Glimmer3/{sample}/{sample}.log"
    shell:
        "extract -t {input.fasta} {input.longorfs} > {output} 2>> {log}"

rule glimmer_build_icm:
    input:
        train="result2/Glimmer3/{sample}/{sample}.train",
    output: "result2/Glimmer3/{sample}/{sample}.icm"
    log: "result2/Glimmer3/{sample}/{sample}.log"
    shell:
        "build-icm -r {output} < {input.train} 2>> {log}"

rule glimmer3:
    input:
        fasta="data/fasta/{sample}.fasta",
        icm="result2/Glimmer3/{sample}/{sample}.icm",
    params:
        prefix="result2/Glimmer3/{sample}/{sample}",
    output:
        predict="result2/Glimmer3/{sample}/{sample}.predict",
    log: "result2/Glimmer3/{sample}/{sample}.log"
    shell:
        "glimmer3 -g 100 {input.fasta} {input.icm} {params.prefix} 2>> {log}"

##############
# Prodigal
##############

rule prodigal:
    input:
        fasta="data/fasta/{sample}.fasta",
    output:
        gff="result2/Prodigal/{sample}/{sample}.gff",
        gene="result2/Prodigal/{sample}/{sample}.gene",
    log: "result2/Prodigal/{sample}/{sample}.log"
    shell:
        "prodigal -i {input.fasta} -p meta -f gff -o {output.gff} -s {output.gene} &> {log}"

##############
# MEME
##############

rule meme_input:
    input:
        fasta="data/fasta/{sample}.fasta",
        gff="data/gff/{sample}.gff",
    output: "result2/MEME/{sample}/{sample}.seg.fasta"
    shell:
        "python analysis/candidate_region.py -f {input.fasta} -g {input.gff} -o {output} -m 10"

rule meme:
    input:
        fasta="result2/MEME/{sample}/{sample}.seg.fasta",
    params: "result2/MEME/{sample}/"
    output: "result2/MEME/{sample}/meme.html"
    log: "result2/MEME/{sample}/{sample}.log"
    shell:
        "meme {input.fasta} -dna -maxw 10 -oc {params} -mod zoops -nmotifs 1 &> {log}"
