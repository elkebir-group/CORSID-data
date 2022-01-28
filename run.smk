configfile: "run.yaml"

rule all:
    input:
        expand("result/CORSID/{sample}.json", sample=config["accession"]),
        expand("result/CORSID_A/{sample}.json", sample=config["accession"]),
        expand("result/Glimmer3/{sample}/{sample}.predict", sample=config["accession"]),
        expand("result/Prodigal/{sample}/{sample}.gene", sample=config["accession"]),
        expand("result/MEME/{sample}/meme.html", sample=config["accession"]),
        expand("result/VADR/{sample}/{sample}.vadr.gff", sample=config["accession"]),

rule corsid:
    input:
        fasta="data/fasta/{sample}.fasta",
        gff="data/gff/{sample}.gff",
    params:
        name="{sample}",
    output: 
        txt="{dir}/CORSID/{sample}.txt",
        json="{dir}/CORSID/{sample}.json",
    log: "{dir}/CORSID/{sample}.log"
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
        txt="{dir}/CORSID_A/{sample}.txt",
        json="{dir}/CORSID_A/{sample}.json",
    log: "{dir}/CORSID_A/{sample}.log"
    shell:
        "corsid -f {input.fasta} -g {input.gff} -n {params.name} "
        "-o {output.json} > {output.txt} 2> {log}"

##############
# Glimmer3
##############

rule glimmer_long_orfs:
    input:
        fasta="data/fasta/{sample}.fasta",
    output: "{dir}/Glimmer3/{sample}/{sample}.longorfs"
    log: "{dir}/Glimmer3/{sample}/{sample}.log"
    shell:
        "long-orfs -n -t 1.15 {input.fasta} {output} &> {log}"

rule glimmer_extract:
    input:
        fasta="data/fasta/{sample}.fasta",
        longorfs="{dir}/Glimmer3/{sample}/{sample}.longorfs"
    output: "{dir}/Glimmer3/{sample}/{sample}.train"
    log: "{dir}/Glimmer3/{sample}/{sample}.log"
    shell:
        "extract -t {input.fasta} {input.longorfs} > {output} 2>> {log}"

rule glimmer_build_icm:
    input:
        train="{dir}/Glimmer3/{sample}/{sample}.train",
    output: "{dir}/Glimmer3/{sample}/{sample}.icm"
    log: "{dir}/Glimmer3/{sample}/{sample}.log"
    shell:
        "build-icm -r {output} < {input.train} 2>> {log}"

rule glimmer3:
    input:
        fasta="data/fasta/{sample}.fasta",
        icm="{dir}/Glimmer3/{sample}/{sample}.icm",
    params:
        prefix="{dir}/Glimmer3/{sample}/{sample}",
    output:
        predict="{dir}/Glimmer3/{sample}/{sample}.predict",
    log: "{dir}/Glimmer3/{sample}/{sample}.log"
    shell:
        "glimmer3 -g 100 {input.fasta} {input.icm} {params.prefix} 2>> {log}"

##############
# Prodigal
##############

rule prodigal:
    input:
        fasta="data/fasta/{sample}.fasta",
    output:
        gff="{dir}/Prodigal/{sample}/{sample}.gff",
        gene="{dir}/Prodigal/{sample}/{sample}.gene",
    log: "{dir}/Prodigal/{sample}/{sample}.log"
    shell:
        "prodigal -i {input.fasta} -p meta -f gff -o {output.gff} -s {output.gene} &> {log}"

##############
# MEME
##############

rule meme_input:
    input:
        fasta="data/fasta/{sample}.fasta",
        gff="data/gff/{sample}.gff",
    output: "{dir}/MEME/{sample}/{sample}.seg.fasta"
    shell:
        "python analysis/candidate_region.py -f {input.fasta} -g {input.gff} -o {output} -m 10"

rule meme:
    input:
        fasta="{dir}/MEME/{sample}/{sample}.seg.fasta",
    params: "{dir}/MEME/{sample}/"
    output: "{dir}/MEME/{sample}/meme.html"
    log: "{dir}/MEME/{sample}/{sample}.log"
    shell:
        "meme {input.fasta} -dna -maxw 10 -oc {params} -mod zoops -nmotifs 1 &> {log}"

##############
# VADR
##############

rule vadr:
    input:
        fasta="data/fasta/{sample}.fasta",
    params:
        model="data/vadr-models-corona-1.3-3",
        folder="{dir}/VADR/{sample}",
    threads: 8
    output: "{dir}/VADR/{sample}/{sample}.vadr.pass.tbl",
    log: "{dir}/VADR/{sample}.log",
    shell:
        "v-annotate.pl --split --cpu 8 --glsearch -s -f -r --nomisc "
        "--mkey corona --lowsim5seq 6 --lowsim3seq 6 --alt_fail lowscore,insertnn,deletinn "
        "--mdir {params.model} "
        "{input.fasta} "
        "{params.folder} &> {log}"

def conditional_input_tbl(wcs):
    file = f"{wcs.dir}/VADR/{wcs.sample}/{wcs.sample}.vadr.pass.tbl"
    if os.path.exists(file):
        if os.path.getsize(file) == 0:
            file = file.replace("pass", "fail")
    else:
        return []
    return [file]

rule convert_table_to_gff:
    input:
        table=conditional_input_tbl,
    output: "{dir}/VADR/{sample}/{sample}.vadr.gff",
    shell:
        './analysis/tbl2gff.awk -v seqid="{wildcards.sample}" -v prog="vadr" {input.table} > {output} '
