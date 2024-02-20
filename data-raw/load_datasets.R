library(httr)
library(iotc.base.common.data)

LAST_UPDATE = Sys.Date()
usethis::use_data(LAST_UPDATE, overwrite = TRUE)

RAW = NC.raw(factorize_results   = FALSE)
usethis::use_data(RAW, overwrite = TRUE)

SCI = NC.est(factorize_results   = FALSE)
usethis::use_data(SCI, overwrite = TRUE)

RSD = NC.raised(factorize_results = FALSE)
usethis::use_data(RSD, overwrite  = TRUE)

DQA = data.quality(factorize_result = FALSE)
usethis::use_data(DQA, overwrite    = TRUE)

BITBUCKET_REPO_URL = paste0("https://api.bitbucket.org/2.0/repositories/iotc-ws/iotc-reference-datasets-nc/downloads")

for(file in list.files("../data", pattern = "*.rda")) {
  log_info(paste0("Uploading '", file, "' to BitBucket repository under ", BITBUCKET_REPO_URL))

  upload_response =
    POST(BITBUCKET_REPO_URL,
         body = list(files = upload_file(paste0("../data/", file))),
         add_headers(
           Authorization = paste0("Bearer ", Sys.getenv("BITBUCKET_UPLOAD_NC_DATASET_TOKEN"))
         )
    )

  log_info(paste0("Upload response: ", upload_response))
}
