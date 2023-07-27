### Add details to the files
library(obisdi)

add_funding(fund_message = "The harvesting of this data to OBIS is part of the MPA Europe project.",
            # Here we use a little trick to supply all info we want
            fund_name = '<br><br><img style="float: left; margin-right: 20px;" src="src/static/mpa_logo.png"/>MPA Europe project has been approved under HORIZON-CL6-2021-BIODIV-01-12 — Improved science based maritime spatial planning and identification of marine protected areas.<br><br>Co-funded by the European Union. Views and opinions expressed are however those of the authors only and do not necessarily reflect those of the European Union or UK Research and Innovation. Neither the European Union nor the granting authority can be held responsible for them')
            # On footer.html, remove "src/" from the image, because it points to another folder

add_institution(inst_message = "Dataset edited by",
                inst_name = "the OBIS secretariat.")

add_gitrepo("iobis")

# After the dataset was downloaded ----
add_metadata_readme(
  data.frame(
    description = "This database consists of abundances (cells/mL) for each species at each station and depth, together with estimates of the biomass and biovolume for each species. One of the key strengths in this database is that species identifications were made by the same taxonomist, which provides greater strength to the collection and ensures that estimates of species diversity are reliable. Environmental information has also been compiled at each station (chlorophyll, temperature, photosynthetically active radiation (PAR), nutrients) in order to have a characterization of the study area and to be used in studies on the environmental and biological controls of marine biodiversity.",
    reponame = "Ecological Archives",
    doi = "http://dx.doi.org/10.1890/13-0236.1",
    date = "2013-01-01",
    authors = "Sofia Sal, Ángel López-Urrutia, Xabier Irigoien, Derek S. Harbour, Roger P. Harris",
    license = "Creative Commons Attribution (CC BY 4.0)"
  )
) # Need reformating after pasted on the README.
