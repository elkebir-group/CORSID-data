# CORSID-data

This is the data repository for [CORSID](https://github.com/elkebir-group/CORSID).
It contains following folders and files:
```
├── analysis
│   ├── BLASTx: BLASTx results for Glimmer3, Prodial, and CORSID FPs
│   ├── ground_truth: ground truth made by notebooks
│   ├── ground_truth.ipynb: generate ground truth files
│   └── corsid_figures.ipynb: analysis and figures
├── data
│   ├── cmfiles: RFAM covariance models
│   ├── fasta: Genbank genomes
│   ├── gff: Genbank annotations
│   └── leader_align: ClustalW2 MSA of leader regions per subgenera
├── result
│   ├── CORSID
│   ├── CORSID_A
│   ├── Glimmer3
│   ├── MEME
│   ├── Prodigal
│   └── SuPER
├── ground_truth.smk: Snakemake workflow for generating ground truth files used by notebooks
├── ground_truth.yaml: configuration file used by `ground_truth.smk`
├── run.smk: Snakemake workflow for running CORSID(-A) and other methods
└── run.yaml: configuration file used by `run.smk`
```

The results of CORSID(-A) and other methods we compare agains are stored in `result/`, and the data used to generate these results are stored in `data/`.
The analysis is done by jupyter notebooks in `analysis/`. We run `analysis/ground_truth.ipynb` first to generate `gt-*` files in `analysis/ground_truth`, which are then used by `analysis/corsid_figures.ipynb`.

In order to run the Snakemake workflow, you need to install CORSID and the following software/packages:
- Snakemake
- Infernal
- pandas
- MEME
- Glimmer3
- Prodigal

You can install them using conda via channel `bioconda`, for example:
``` bash
conda install -c bioconda infernal
```
