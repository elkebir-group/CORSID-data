import pandas as pd
import pysam
import argparse, sys


def parse_attributes(attr: str):
    return dict(pair.split('=') for pair in attr.split(";") if len(pair) > 0)


def get_leader(annotation_file: str):
    annot = pd.read_csv(annotation_file,
                        sep='\t',
                        header=None,
                        names=["id", "source", "feature", "start", "end",
                               "score", "strand", "phase", "attributes"],
                        comment='#')
    orf1ab_start = 1000000000
    for idx, row in annot[annot["feature"] == "CDS"].iterrows():
        infos = parse_attributes(row["attributes"])
        if "gene" in infos:
            name = infos["gene"]
        elif "product" in infos:
            name = infos["product"]
        elif "pseudo" in infos and infos["pseudo"] == "true":
            continue
        else:
            print("No label: ", row)
            exit(1)

        known_name_of_1ab = {"1a", "1b", "1ab", "replicase", "polymerase", "polyprotein", "pol", "rep"}
        if any(n in name.lower() for n in known_name_of_1ab) or name.lower() == '1' or name.lower() == 'orf1':
            if row["start"] > 1:
                orf1ab_start = min(orf1ab_start, row["start"])
        if orf1ab_start > 1000:
            orf1ab_start = 150
    return orf1ab_start


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--fasta",
                        type=str,
                        help="fasta file")
    parser.add_argument("-g", "--gff",
                        type=str,
                        help="gff file")
    parser.add_argument("-o", "--output", type=str, help="output FASTA file")
    args = parser.parse_args(None if sys.argv[1:] else ['-h'])

    fasta = pysam.Fastafile(args.fasta)
    ref = fasta.fetch(fasta.references[0])
    orf1ab_start = get_leader(args.gff)
    with open(args.output, "w") as ofile:
        ofile.write(f">{fasta.references[0]}\n")
        ofile.write(ref[:orf1ab_start])
        print(fasta.references[0], orf1ab_start)
