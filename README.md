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
└── result
    ├── CORSID
    ├── CORSID_A
    ├── Glimmer3
    ├── MEME
    ├── Prodigal
    └── SuPER
```

The results of CORSID(-A) and other methods we compare agains are stored in `result/`, and the data used to generate these results are stored in `data/`.
The analysis is done by jupyter notebooks in `analysis/`. We run `analysis/ground_truth.ipynb` first to generate `gt-*` files in `analysis/ground_truth`, which is then used by `analysis/corsid_figures.ipynb`.
