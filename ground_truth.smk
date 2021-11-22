configfile: "ground_truth.yaml"

def select_cmfile(sample):
    if config["delegate"][sample][1] == "Sarbecovirus":
        return config["cmfiles"]["Sarbecovirus"]
    else:
        return config["cmfiles"][config["delegate"][sample][0]]

rule all:
    input:
        expand("result/ground_truth/cmalign/{sample}/{sample}.stk", sample=config["delegate"]),

rule get_leader:
    input:
        fasta="../../genbank/{sample}.fasta",
        gff="../../genbank/{sample}.gff",
    output: "result/ground_truth/cmalign/{sample}/{sample}.leader.fasta"
    shell:
        "python analysis/get_leader.py -f {input.fasta} -g {input.gff} -o {output} "

rule cmalign:
    input:
        fasta="result/ground_truth/cmalign/{sample}/{sample}.leader.fasta",
        cm=lambda wildcards: select_cmfile(wildcards["sample"]),
    output: "result/ground_truth/cmalign/{sample}/{sample}.stk"
    log: "result/ground_truth/cmalign/{sample}/{sample}.log"
    shell: "cmalign -o {output} {input.cm} {input.fasta} &> {log}"