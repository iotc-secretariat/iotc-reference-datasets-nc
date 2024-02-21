library(httr)
library(iotc.base.common.data)

RAW = NC.raw()
usethis::use_data(RAW, overwrite = TRUE, compress = "gzip")

RAW_NF = NC.raw(factorize_results = FALSE)
usethis::use_data(RAW_NF, overwrite = TRUE, compress = "gzip")

SCI = NC.est()
usethis::use_data(SCI, overwrite = TRUE, compress = "gzip")

RSD = NC.raised()
usethis::use_data(RSD, overwrite  = TRUE, compress = "gzip")

DQA = data.quality()
usethis::use_data(DQA, overwrite    = TRUE, compress = "gzip")

LAST_UPDATE = Sys.Date()

METADATA = list(
  RAW = list(
    DATA = nrow(RAW),
    QUALITY = nrow(DQA),
    LAST_UPDATE = LAST_UPDATE
  ),
  SCI = list(
    DATA = nrow(SCI),
    QUALITY = nrow(DQA),
    LAST_UPDATE = LAST_UPDATE
  ),
  RSD = list(
    DATA = nrow(RSD),
    QUALITY = nrow(DQA),
    LAST_UPDATE = LAST_UPDATE
  )
)

usethis::use_data(METADATA, overwrite = TRUE, compress = "gzip")

TOKEN = Sys.getenv("BITBUCKET_UPLOAD_NC_DATASET_TOKEN")

if(TOKEN == "") {
  stop("No 'BITBUCKET_UPLOAD_NC_DATASET_TOKEN' value found in system environment: cannot upload artifacts!")
} else {
  BITBUCKET_REPO_URL = "https://api.bitbucket.org/2.0/repositories/iotc-ws/iotc-reference-datasets-NC/downloads"

  FILES = list.files("../data", pattern = "*.rda")

  if(length(FILES) == 0) {
    stop("No .RDA files found: check that these have been produced and that you are running this script from the right directory (its container folder)")
  }

  for(file in FILES) {
    log_info(paste0("Uploading '", file, "' to BitBucket repository under ", BITBUCKET_REPO_URL))

    upload_response =
      POST(BITBUCKET_REPO_URL,
           body = list(files = upload_file(paste0("../data/", file))),
           add_headers(
             Authorization = paste0("Bearer ", TOKEN)
           )
      )

    log_info(paste0("Upload response: [", status_code(upload_response), "] / ", content(upload_response)))
  }
}
