# CORSID-data

This is the data repository for [CORSID](https://github.com/elkebir-group/CORSID) and this [paper](https://doi.org/10.1101/2021.11.10.468129).

Output of CORSID and CORSID-A stored here is visualized [in this website](https://elkebir-group.github.io/CORSID-viz/) using [CORSID-viz](https://github.com/elkebir-group/CORSID-viz).

It contains the following folders and files:
```
├── analysis
│   ├── candidate_region.py: script for preparing input to MEME
│   ├── convert.py: functions used in corsid_figures.ipynb
│   ├── get_leader.py: functions used in corsid_figures.ipynb
│   ├── heuristic.py: functions used in corsid_figures.ipynb
│   ├── BLASTx: BLASTx results for Glimmer3, Prodial, and CORSID FPs
│   ├── ground_truth: ground truth made by notebooks
│   ├── ground_truth.ipynb: generate ground truth files
│   └── corsid_figures.ipynb: analysis and figures
├── data
│   ├── cmfiles: RFAM covariance models
│   ├── fasta: Genbank genomes
│   ├── gff: Genbank annotations
│   ├── leader_align: ClustalW2 MSA of leader regions per subgenera
│   └── vadr-models-corona-1.3-3.tar.gz.part*: compressed reference database of VADR
├── result
│   ├── CORSID
│   ├── CORSID_A
│   ├── Glimmer3
│   ├── MEME
│   ├── Prodigal
│   ├── SuPER
│   └── VADR
├── ground_truth.smk: Snakemake workflow for generating ground truth files used by notebooks
├── ground_truth.yaml: configuration file used by `ground_truth.smk`
├── run.smk: Snakemake workflow for running CORSID(-A) and other methods
└── run.yaml: configuration file used by `run.smk`
```

The results of CORSID(-A) and other methods we compare agains are stored in `result/`, and the data used to generate these results are stored in `data/`.
The analysis is done by jupyter notebooks in `analysis/`. We run `analysis/ground_truth.ipynb` first to generate `gt-*` files in `analysis/ground_truth`, which are then used by `analysis/corsid_figures.ipynb`.

## Usage

In order to run the Snakemake workflow that generate these results, you need to install CORSID and the following software/packages:
- Snakemake
- Infernal
- pandas
- MEME
- Glimmer3
- Prodigal
- [VADR](https://github.com/ncbi/vadr)

We recommend users to install these software in a virtual environment.
You can install them using conda via channel `bioconda`, for example:
``` bash
conda install -c bioconda infernal
```
For VADR, please follow their [instructions](https://github.com/ncbi/vadr/blob/master/documentation/install.md).
Then decompress its reference database tar file into `data/`:
```bash
cd data/
cat vadr-models-corona-1.3-3.tar.gz.part* | tar xzf -
```

After installing every software, run this snakemake command:
```bash
snakemake -c 16 -k -s run.smk
```
