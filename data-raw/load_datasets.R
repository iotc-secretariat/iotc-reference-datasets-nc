library(iotc.base.common.data)
library(lubridate)

LAST_UPDATE = today(tzone = "UTC")
usethis::use_data(LAST_UPDATE, overwrite = TRUE)

RAW = NC.raw(factorize_results   = FALSE)
usethis::use_data(RAW, overwrite = TRUE)

SCI = NC.est(factorize_results   = FALSE)
usethis::use_data(SCI, overwrite = TRUE)

RSD = NC.raised(factorize_results = FALSE)
usethis::use_data(RSD, overwrite  = TRUE)

DQA = data.quality(factorize_result = FALSE)
usethis::use_data(DQA, overwrite    = TRUE)
