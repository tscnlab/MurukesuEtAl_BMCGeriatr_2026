<img src="https://github.com/tscnlab/Templates/blob/main/logo/logo_with_text-01.png" width="400"/>

# LightSPAN protocol supplement

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17914996.svg)](https://doi.org/10.5281/zenodo.17914996)

This repository provides the supplementary materials for the LightSPAN protocol article (BMC Geriatrics). It will evolve to house analysis code, derived data, figures, and other artifacts that support the manuscript over time. The current contents focus on the initial power analysis used to design the study but the structure below is intended to accommodate future additions.

## File structure at a glance

```
MurukesuEtAl_BMCGeriatr_2026/
├── LICENSE                       # MIT License for repository contents
├── Murukesu_BMCGeriatr_2025.Rproj # RStudio project file for the manuscript
└── Power_analysis/               # Power analysis assets for the LightSPAN study
    ├── LightSpan_Power.Rproj     # RStudio project for power simulations
    ├── LightSpan_Power.qmd       # Quarto document describing the power workflow
    ├── input.csv                 # Input data for simulations
    ├── LightSpan_Power.pdf       # Rendered PDF report of the power analysis
    ├── figures/                  # Generated plots from the simulations
    │   └── LightSpan_power.pdf   # Power curve figure
    └── functions/                # Helper functions used in the analysis
        ├── bootstraps.R          # Bootstrap utilities for repeated sampling
        ├── plot_power.R          # Plotting helpers for power curves
        └── resample_within_id.R  # Resampling functions respecting participant IDs
```

## Authorship and affiliations

* Resshaya Roobini Murukesu (1, 2) — [ORCID: 0000-0002-0947-5817](https://orcid.org/0000-0002-0947-5817)
* Zahrah Alwi Alkaff (2, 1) — [ORCID: 0009-0003-7344-3363](https://orcid.org/0009-0003-7344-3363)
* Denz Del Villar (1, 2) — [ORCID: 0009-0000-5225-9987](https://orcid.org/0009-0000-5225-9987)
* Johannes Zauner (2, 4) — [ORCID: 0000-0003-2171-4566](https://orcid.org/0000-0003-2171-4566)
* Manuel Spitschan (1, 2, 3, 4) — [ORCID: 0000-0002-8572-9268](https://orcid.org/0000-0002-8572-9268) *(corresponding author: manuel.spitschan@tum.de)*

1. TUMCREATE, Singapore, Singapore  
2. TUM School of Medicine & Health, Department Health and Sport Sciences, Technical University of Munich, Munich, Germany  
3. TUM Institute for Advanced Study (TUM-IAS), Technical University of Munich, Garching, Germany  
4. Max Planck Institute for Biological Cybernetics, Max Planck Research Group Translational Sensory & Circadian Neuroscience, Tübingen, Germany

## How to cite

Please cite the Zenodo record when reusing any of the materials in this supplement:

> Murukesu RR, Alkaff ZA, Del Villar D, Zauner J, Spitschan M. (2026). LightSPAN protocol supplement (v1.0). Zenodo. https://doi.org/10.5281/zenodo.17914996

The associated study protocol is published in BMC Geriatrics.
