# Get metadata EML file for the dataset
# This file (in xml format) is then used in the IPT to add information about the dataset
library(obisdi)

# We will use the gen_metadata family of the obisdi package
# More information see ?gen_metadata

responsible <- gen_meta_person(c("Silas", "Pieter", "Secretariat"),
                               c("Principe", "Provoost", "Team"),
                               "OBIS",
                               c("Researcher", "Data manager", "Management"),
                               "Secretariat",
                               electronicMailAddress = c("s.principe@unesco.org", "", ""))

work_title <- "Marine microplankton diversity database"

work_abstract <- c("It was published in Ecological Archives (https://doi.org/http://dx.doi.org/10.1890/13-0236.1), and was authored by Sofia Sal, Ángel López-Urrutia, Xabier Irigoien, Derek S. Harbour, Roger P. Harris.
                   
Many macroecological theories have been developed to study the diversity on our planet. All these theories require the existence of consistent databases to test their predictions. In this work, we compiled a data set of marine microplankton species abundances at 788 stations with an extensive geographical coverage. Data were collected on different oceanographic cruises between 1992 and 2002. This database consists of abundances (cells/mL) for each species at each station and depth, together with estimates of the biomass and biovolume for each species. One of the key strengths in this database is that species identifications were made by the same taxonomist, which provides greater strength to the collection and ensures that estimates of species diversity are reliable. Environmental information has also been compiled at each station (chlorophyll, temperature, photosynthetically active radiation (PAR), nutrients) in order to have a characterization of the study area and to be used in studies on the environmental and biological controls of marine biodiversity.")

geo_coverage <- gen_meta_geocov(geographicDescription = "Data were compiled for 788 stations during different oceanographic cruises in temperate, polar and subtropical regions. Stations sampled cover a wide range of marine ecosystems, ranging from coastal to open ocean. North Atlantic Ocean samples include the Irminger Sea, Norwegian Sea, North Sea, and Iceland Basin. Samples were also collected on cruises along the South Atlantic Ocean (mainly Atlantic Meridional Transect cruises), Benguela current, Indian Ocean, and West Coast of the North Pacific Ocean. One of the experiments, ''Bergen'', took place in open-air mesocosms at the Espegrend Marine Biological Station (University of Bergen).")

temp_coverage <- gen_meta_temporalcov(beginDate = "1992-10-01", endDate = "2002-05-01")

work_purpose <- "This data ingestion of the BioTIME dataset into OBIS aims to provide easier access to the data and is part of an effort linked to the MPA Europe project."

work_methods <- gen_meta_methods(steps_description = c(
  "Sampling methods
  Microplankton abundance

Data analysed were collected from 1992 to 2002 at 788 sites. See Fig. 1 and Table 1 for a detailed site description. Seawater samples were collected from different depths (most of them in surface waters) from CTD Niskin bottles. For later microplankton cell counts, it is very important to handle seawater with care, as some organisms are very sensitive to turbulence (Gifford and Caron 2000). Water samples were taken from the Niskin bottle and immediately preserved with 1–5 % acid-Lugol's iodine solution (Throndsen 1978). Samples were labelled and stored in cold, dark conditions during transportation to the laboratory.

Nutrients

We only have in situ nutrients data for AMT cruises. Samples were taken from the underway pumping system between stations, from vertical profiles at each station, or both. However, we only included samples obtained during the daily CTD casts coincident with the microplankton sampling. Water samples from the CTD/Rosette system (SeaBird) were sub-sampled into clean Nalgene bottles. Sample analysis was completed within 3 h of sampling, so no samples were stored.

Other variables

For Chlorophyll, between 200 and 300 mL of sea water from each depth in the water column were sequentially filtered through 0.2 µm, 2 µm and 20 µm polycarbonate filters. Chl a was extracted from filters in 90% acetone at 20°C for 12 to 24 hours. Samples were measured on a Turner 10-AU fluorometer calibrated with pure Chl a.

Temperature and PAR were obtained either from CTD data or underway records from the ship. For those stations where it was impossible to obtain data, these were retrieved from satellite data.
  ",
  "Analysis methods
  Microplankton abundance

Microplankton identification and cell counts was carried out by Derek S. Harbour at the Plymouth Marine Laboratory using inverted microscopy following the Utermöhl technique (Utermöhl 1958). The ''Water quality - Guidance standard for routine microscopic surveys of phytoplankton using Utermöhl technique'' (BS EN 15204:2006) was followed:

Microplankton samples, preserved in Lugol's iodine and formalin, were settled in sedimentation chambers while acclimatized to room temperature, to ensure a random distribution of cells. After this, sample bottles were rotated to help re-suspension and separation. Sub-samples with volumes between 10 and 256 mL were later transferred to plankton settling chambers. A variable area of the chamber bottom was counted under the microscope. The size of that area varies with species and abundance and under some circunstances different species were counted in different settled volumes to obtain consistency and reproducibility in the counts. At least 100 cells of each of the more abundant species were counted. Settlement duration varied between 4h cm-1 for Lugol's iodine and 16 h cm-1 for formaldehyde samples.

Once the settling process finished, cells were identified, where possible, to species/genus level and assigned to different functional groups: Flagellates, Heterotrophic flagellates, Diatoms, Coccolithophores, Dinoflagellates, Heterotrophic dinoflagellates, and Ciliates. It should be noted that heterotrophic refers to organisms that do not contain pigments.

Abundance data for each species at each station was calculated in cells per mL. Dimensions of individual species were measured in µm units using digital measurements and calibrated against an ocular micrometer. Using the corresponding geometric shapes, these measurements were converted to volume using the (Kovala and Larrance 1966) methodology. Once this was done, cell volumes were converted to carbon (pg cell-1) using the formulae of Menden-Deuer and Lessard (2000).

Since all the plankton counts were obtained by light inverted microscopy they do not include pico-cyanobacteria, like Prochlorococcus and Synechococcus. The database adequately samples the microplankton size range and part of the nanoplankton abundance, small eukaryotes are also too small to be identified to the species level by light-microscopy. The Utermöhl technique is restricted to cells larger than 10 µm (within the nanoplankton size range). Smaller cells do not settle quantitatively even after Lugol's iodine addition and cells are too small to classify to the species level.

Nutrients

To analyse nutrients, a Technicon AAII (four-five channel depending on the cruise) segmented-flow auto-analyser was used. Protocols used were different for each nutrient: phosphate and silicate were analysed as described by Kirkwood (1989). Nitrate and nitrite was analysed using a modified version of Grasshoff's method (Grasshoff 1976), as described by Brewer and Riley (1965). These were measured as nirate plus nitrite, since the nitrate was determined as nitrite using a copper-cadmium reduction column to reduce it to nitrite. We later calculated nitrate as the difference between the nitrite measure and the nitrite plus nitrate measure. Ammonium was measured only in cruise AMT6. The chemical methodology used was the described by (Mantoura and Woodward 1983). All results are presented as µmol L-1 of the elements nitrogen, phosphorus and silica.

Environmental data

When in situ enviromental data were not available they were extracted from satellite data or global distribution maps. For Chl, Surface PAR and Diffuse attenuation coefficient at 490 nm (Kd490), we used SeaWIFS L3 datasets with 9km (1 pixel = 9 km) spatial resolution. We used SeaDAS (SeaWiFS Data Analysis System) to locate the closest pixel to the sampled location in the satellite image (radius of 0). Because sometimes this exact pixel contained a missing value we used the data of adjacent pixels using different search radius (from high to low accuracy), starting at 1 (radius of 1 pixel). When satellite data for the same day was not available we used the satellite image for the corresponding month and, ultimately, the monthly climatological data from the Ocean Color site (http://oceandata.sci.gsfc.nasa.gov/SeaWiFS/Mapped/).

For each variable a vector attached indicates the data quality flag (QF), starting at 0 when data is in situ, and decreasing in precision going from data extracted from daily maps to data extracted from monthly climatologies.

QF are: 0 (real data), 1 (daily satellite data (DS), radius = 0), 2 (DS, radius = 1), 3 (DS, radius = 3), 4 (DS, radius = 5), 5 (DS, radius = 10), 6 (DS, radius = 20), 7 (monthly satellite data (MS), radius = 0), 8 (MS, radius = 1), 9 (MS, radius = 3), 10 (MS, radius = 5), 11 (MS, radius = 10),12 (MS, radius = 20), 13 (monthly climatology satellite data (CS), radius = 0), 14 (CS, radius = 1), 15 (CS, radius = 3), 16 (CS, radius = 5), 17 (CS, radius = 10).

PAR at the sampled depth (PARz) was calculated using the Surface PAR and the Kd490. Mixed layer depth (MLD) data were extracted from the Ocean Productivity site (http://orca.science.oregonstate.edu/1080.by.2160.monthly.hdf.mld.merge.php). Data are stored in maps on a monthly basis at 1080 by 2160 resolution. We used SeaDAS to extract the whole image for each month. Then we located the MLD value for each coordinate value. For those points where there were not data, we calculated an annual climatology based on the monthly data set: We first interpolated maps to a lower resolution (360 by 180) and then calculated the mean for each month.

QF are defined as follows: 0 (in situ data), 1 (monthly satellite data (MS)), 2 (monthly climatology satellite data (CS)). The use of a search radius is not needed because images are the output of a model and do not have missing values.

To obtain an estimate of temperature for samples collected at depths below the MLD and for nutrients, we compiled data from the annual climatologies from the World Ocean Atlas 09 (WOA09) database at one degree resolution and 10 depth levels (0, 10, 20, 30, 50, 75, 100, 125, 150, 200 meters) (http://www.nodc.noaa.gov/OC5/WOA09/woa09data.html). We extracted the value in the range of one degree around the specified coordinate.

QF are defined as follows: 0 (in-situ data), 1 (WOA data).

When the sample was collected at a depth shallower than the MLD, temperature was obtained from the Sea Surface Temperature (SST) data from the AVHRR satellite. We compiled daily datasets with 4km (1 pixel = 4 km) resolution from the NOAA site (ftp://podaac-ftp.jpl.nasa.gov/allData/avhrr/L3/pathfinder_v5/daily/night/04km/).

QF are defined as follows: 2 (daily satellite data (DS), radius = 0), 3 (DS, radius = 1), 4 (DS,radius = 3).",
  "Taxonomy and systematics
  Taxonomic names were checked against the World Register of Marine Species (WoRMS). Names not matched within WoRMS were checked against various other taxonomic references (e.g., ITIS, algaebase). A column with author comments is attached for those species which were not matched to any taxonomic references."
),
                                studyExtent = "Global",
                                samplingDescription = "Data were obtained from many experiments and observations made in the oceanographic cruises listed above. Species taxonomic identification and cell counts were all made by Derek S. Harbour. See Research Methods below.")

work_licence <- "This work is licensed under a Creative Commons Attribution (CC-BY 4.0) License."

gen_metadata(
  title = work_title,
  creator = responsible - "Secretariat Team",
  metadataProvider = responsible + "Silas Principe",
  language = "English",
  metadataLanguage = "English",
  abstract = work_abstract,
  associatedParty = responsible + "Secretariat Team",
  coverage = list(geo_coverage, temp_coverage),
  purpose = work_purpose,
  contact = responsible,
  methods = work_methods,
  intellectualRights = work_licence
)
