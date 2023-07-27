# Marine microplankton diversity database

## About this dataset

This database consists of abundances (cells/mL) for each species at each station and depth, together with estimates of the biomass and biovolume for each species. One of the key strengths in this database is that species identifications were made by the same taxonomist, which provides greater strength to the collection and ensures that estimates of species diversity are reliable. Environmental information has also been compiled at each station (chlorophyll, temperature, photosynthetically active radiation (PAR), nutrients) in order to have a characterization of the study area and to be used in studies on the environmental and biological controls of marine biodiversity.

It was published in Ecological Archives (https://doi.org/http://dx.doi.org/10.1890/13-0236.1), and was authored by Sofia Sal, Ángel López-Urrutia, Xabier Irigoien, Derek S. Harbour, Roger P. Harris.

The first version of the dataset is available since 2013 and is licensed under a Creative Commons Attribution (CC BY 4.0) license.

## Workflow

[source data](https://github.com/iobis/mpaeu_di_microp_diversity/tree/master/data/raw) → Darwin Core [mapping script](https://github.com/iobis/mpaeu_di_microp_diversity/blob/master/src/obisdi_general.Rmd) → generated [Darwin Core files](https://github.com/iobis/mpaeu_di_microp_diversity/tree/master/data/processed)

## Additional metadata

All metadata is available at https://www.esapubs.org/archive/ecol/E094/149/metadata.php (a copy is available on the `data/raw` folder).

## Published dataset

* [Dataset on the IPT]({once published, link to the published dataset})
* [Dataset on OBIS]({once published, link to the published dataset})

## Repo structure

Files and directories indicated with `GENERATED` should not be edited manually.

```
├── README.md              : Description of this repository
├── LICENSE                : Repository license
├── mpaeu_di_microp_diversity.Rproj : RStudio project file
├── .gitignore             : Files and directories to be ignored by git
│
├── data
│   ├── raw                : Source data, input for mapping script
│   └── processed          : Darwin Core output of mapping script GENERATED
│
├── docs                   : Repository website GENERATED
│
└── src
    ├── dwc_mapping.Rmd    : Darwin Core mapping script
    ├── _site.yml          : Settings to build website in docs/
    ├── index.Rmd          : Template for website homepage
    └── static             : Figures and CSS code for the website
```
<!-- Please don't edit below this line -->
<!-- PACKAGE DETAILS -->
<br>

<!--INSTITUTIONAL_DETAILS--> Dataset edited by the OBIS secretariat.  <br><br>
<!--FUNDING_DETAILS--> The harvesting of this data to OBIS is part of the MPA Europe project. <br><br><img style="float: left; margin-right: 20px;" src="src/static/mpa_logo.png"/>MPA Europe project has been approved under HORIZON-CL6-2021-BIODIV-01-12 — Improved science based maritime spatial planning and identification of marine protected areas.<br><br>Co-funded by the European Union. Views and opinions expressed are however those of the authors only and do not necessarily reflect those of the European Union or UK Research and Innovation. Neither the European Union nor the granting authority can be held responsible for them  <br><br>

This repository was created using the
`obisdi` package [(download here)](https://github.com/iobis/obisdi/) and was inspired by the [TrIAS Project checklist recipe](https://github.com/trias-project/checklist-recipe/). This README is a direct adaptation of the TrIAS model, with slight changes.
<hr>
<br>  
<img src="src/static/obisdi_logo.png" width="60" align="left" /> OBIS Data Ingestion | Ocean Biodiversity Information System <a href = "https://obis.org/">(obis.org)</a>
