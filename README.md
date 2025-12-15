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

* Resshaya Roobini Murukesu (TUMCREATE, Singapore; TUM School of Medicine & Health, Department Health and Sport Sciences, Technical University of Munich, Munich, Germany) — [ORCID: 0000-0002-0947-5817](https://orcid.org/0000-0002-0947-5817)
* Zahrah Alwi Alkaff (TUMCREATE, Singapore; TUM School of Medicine & Health, Department Health and Sport Sciences, Technical University of Munich, Munich, Germany) — [ORCID: 0000-0003-7473-4062](https://orcid.org/0000-0003-7473-4062)
* Aiman Nusrat (TUMCREATE, Singapore; TUM School of Medicine & Health, Department Health and Sport Sciences, Technical University of Munich, Munich, Germany) — [ORCID: 0009-0003-5225-9387](https://orcid.org/0009-0003-5225-9387)
* Denz Del Villar (TUMCREATE, Singapore; TUM School of Medicine & Health, Department Health and Sport Sciences, Technical University of Munich, Munich, Germany) — [ORCID: 0000-0002-5435-3987](https://orcid.org/0000-0002-5435-3987)
* Johannes Zauner (TUMCREATE, Singapore) — [ORCID: 0009-0002-3558-1448](https://orcid.org/0009-0002-3558-1448)
* Manuel Spitschan (TUMCREATE, Singapore; TUM School of Medicine & Health, Department Health and Sport Sciences, Technical University of Munich, Munich, Germany; TUM Institute for Advanced Study (TUM-IAS), Technical University of Munich, Garching, Germany; Max Planck Institute for Biological Cybernetics, Max Planck Research Group Translational Sensory & Circadian Neuroscience, Tübingen, Germany) — [ORCID: 0000-0002-8566-0895](https://orcid.org/0000-0002-8566-0895) *(corresponding author: manuel.spitschan@tum.de)*

## How to cite

Please cite the Zenodo record when reusing any of the materials in this supplement:

> Murukesu RR, Alkaff ZA, Nusrat A, Del Villar D, Zauner J, Spitschan M. (2026). LightSPAN protocol supplement (v1.0). Zenodo. https://doi.org/10.5281/zenodo.17914996

The associated study protocol is published in BMC Geriatrics.
