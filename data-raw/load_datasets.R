library(iotc.base.common.data)

NC_RAW = NC.raw(factorize_results = FALSE)
usethis::use_data(NC_RAW, overwrite = TRUE)

NC_SCI = NC.est(factorize_results = FALSE)
usethis::use_data(NC_SCI, overwrite = TRUE)

NC_RSD = NC.raised(factorize_results = FALSE)
usethis::use_data(NC_RSD, overwrite = TRUE)
