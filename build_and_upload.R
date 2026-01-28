# Libraries
library(httr)
library(iotc.core.utils.misc)
library(rmarkdown)
library(knitr)
library(bookdown)
library(DT)

# Load the data on the GitHub repository ####
source("./data-raw/01_load_datasets.R")

# Generate the datasets ####
source("./data-raw/02_export_datasets.R")

# TO DO - create converters between legacy and new formats
# View [Miguel].[dbo].[1NC_WebPageFILE]: RAW | "Z:/Public datasets/2025-01-14/IOTC-DATASETS-2025-01-14-NC-ALL_1950-2023.xlsx"
# Table [IOTDB].[dbo].[est_NCdissag]: SCI | "Z:/Public datasets/2025-01-14/IOTC-DATASETS-2025-01-14-NC-SCI_1950-2023.xlsx"

# Generate dataset description ###
source("./data-raw/03_export_metadata.R")

## Prior to disaggregation ####
render("./rmd/01_RC_RAW_metadata.Rmd",
       output_dir = "./outputs/html/",
       output_file = paste0("RC_RAW_metadata_", Sys.Date(), ".html")
       )

## Best scientific estimates ####s
render("./rmd/02_RC_SCI_metadata.Rmd",
       output_dir = "./outputs/html/",
       output_file = paste0("RC_SCI_metadata_", Sys.Date(), ".html")
       )

# Export datasets to Zenodo with Geoflow ####
# To develop as part of SWIOP
