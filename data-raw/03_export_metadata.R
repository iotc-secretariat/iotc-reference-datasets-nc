# Define Data Fields ####
RC_FIELDS <- data.table::fread("https://github.com/iotc-secretariat/iotc-glossaries/raw/refs/heads/master/inputs/iotc-dataset-fields.csv")[DATASET == "RC" & CONTEXT == "GENERAL"]

FIELDS_RC_DATA_TABLE <- RC_FIELDS[FIELD %in% names(RC_SCI), .(FIELD, DEFINITION, `CODE LIST NAME`, `CODE LIST URL`)]

FIELDS_RC_DATA_TABLE[!is.na(`CODE LIST NAME`), `CODE LIST` := paste0("<a href=\"", `CODE LIST URL`, "\">", `CODE LIST NAME`, "</a>")]

FIELDS_RC_DATA_TABLE <- FIELDS_RC_DATA_TABLE[, -c("CODE LIST NAME", "CODE LIST URL")]
