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
