configfile: "run.yaml"

rule all:
    input:
        expand("result/CORSID_v2/{sample}.json", sample=config["accession"]),

rule corsid:
    input:
        fasta="data/fasta/{sample}.fasta",
        gff="data/gff/{sample}.gff",
    params:
        name="{sample}",
    output: 
        txt="{dir}/CORSID_v2/{sample}.txt",
        json="{dir}/CORSID_v2/{sample}.json",
    log: "{dir}/CORSID_v2/{sample}.log"
    shell:
        "corsid -f {input.fasta} -g {input.gff} -n {params.name} "
        "-o {output.json} > {output.txt} 2> {log}"


