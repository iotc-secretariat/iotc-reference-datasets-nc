library(iotc.base.common.data)

NC_RAW = NC.raw()
NC_SCI = NC.est()
NC_RSD = NC.raised()

usethis::use_data(NC_RAW, overwrite = TRUE)
usethis::use_data(NC_SCI, overwrite = TRUE)
usethis::use_data(NC_RSD, overwrite = TRUE)
