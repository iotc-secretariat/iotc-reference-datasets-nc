library(iotc.base.common.data)

NC_RAW = NC.raw()
usethis::use_data(NC_RAW, overwrite = TRUE)

NC_SCI = NC.est()
usethis::use_data(NC_SCI, overwrite = TRUE)

NC_RSD = NC.raised()
usethis::use_data(NC_RSD, overwrite = TRUE)
