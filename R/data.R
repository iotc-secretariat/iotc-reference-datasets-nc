#' The date at which the NC datasets were last updated
"LAST_UPDATE"

#' The 'raw' nominal catch dataset
#'
#' Includes data for all species, as originally reported by CPCs and with a re-estimations applied to IDN and IND data
#'
#' @format
#' \describe{
#'   \item{YEAR}{}
#'   \item{QUARTER}{}
#'   \item{FISHING_GROUND_CODE}{}
#'   \item{FISHING_GROUND}{}
#'   \item{FLEET_CODE}{}
#'   \item{FLEET}{}
#'   \item{FISHERY_TYPE_CODE}{}
#'   \item{FISHERY_TYPE}{}
#'   \item{FISHERY_GROUP_CODE}{}
#'   \item{FISHERY_GROUP}{}
#'   \item{FISHERY_CODE}{}
#'   \item{FISHERY}{}
#'   \item{GEAR_CODE}{}
#'   \item{GEAR}{}
#'   \item{IUCN_STATUS_CODE}{}
#'   \item{IUCN_STATUS}{}
#'   \item{SPECIES_WP_CODE}{}
#'   \item{SPECIES_WP}{}
#'   \item{SPECIES_GROUP_CODE{}
#'   \item{SPECIES_GROUP}{}
#'   \item{SPECIES_CATEGORY_CODE}{}
#'   \item{SPECIES_CATEGORY}{}
#'   \item{SPECIES_CODE}{}
#'   \item{SPECIES}{}
#'   \item{SPECIES_SCIENTIFIC}{}
#'   \item{SPECIES_FAMILY}{}
#'   \item{SPECIES_ORDER}{}
#'   \item{IS_IOTC_SPECIES}{}
#'   \item{IS_SPECIES_AGGREGATE}{}
#'   \item{IS_SSI}{}
#'   \item{CATCH}{}
#'   \item{CATCH_UNIT_CODE}{}
#'   \item{FATE_TYPE_CODE}{}
#'   \item{FATE_TYPE}{}
#'   \item{FATE_CODE}{}
#'   \item{FATE}{}
#' }
"RAW"

#' The 'best scientific estimates' nominal catch dataset
#'
#' Includes data for IOTC species only, fully disaggregated by gear and species
#'
#' @format
#' \describe{
#'   \item{YEAR}{}
#'   \item{QUARTER}{}
#'   \item{FISHING_GROUND_CODE}{}
#'   \item{FISHING_GROUND}{}
#'   \item{FLEET_CODE}{}
#'   \item{FLEET}{}
#'   \item{FISHERY_TYPE_CODE}{}
#'   \item{FISHERY_TYPE}{}
#'   \item{FISHERY_GROUP_CODE}{}
#'   \item{FISHERY_GROUP}{}
#'   \item{FISHERY_CODE}{}
#'   \item{FISHERY}{}
#'   \item{GEAR_CODE}{}
#'   \item{GEAR}{}
#'   \item{IUCN_STATUS_CODE}{}
#'   \item{IUCN_STATUS}{}
#'   \item{SPECIES_WP_CODE}{}
#'   \item{SPECIES_WP}{}
#'   \item{SPECIES_GROUP_CODE{}
#'   \item{SPECIES_GROUP}{}
#'   \item{SPECIES_CATEGORY_CODE}{}
#'   \item{SPECIES_CATEGORY}{}
#'   \item{SPECIES_CODE}{}
#'   \item{SPECIES}{}
#'   \item{SPECIES_SCIENTIFIC}{}
#'   \item{SPECIES_FAMILY}{}
#'   \item{SPECIES_ORDER}{}
#'   \item{IS_IOTC_SPECIES}{}
#'   \item{IS_SPECIES_AGGREGATE}{}
#'   \item{IS_SSI}{}
#'   \item{CATCH}{}
#'   \item{CATCH_UNIT_CODE}{}
#'   \item{FATE_TYPE_CODE}{}
#'   \item{FATE_TYPE}{}
#'   \item{FATE_CODE}{}
#'   \item{FATE}{}
#' }
"SCI"

#' The 'raised' nominal catch dataset
#'
#' Includes quarterly data for ALB, BET, SKJ, SWO, and YFT, fully disaggregated by gear and species, with proper attribution of fishing mode and with estimates of catches in numbers for each stratum
#'
#' @format
#' \describe{
#'   \item{YEAR}{}
#'   \item{QUARTER}{}
#'   \item{FISHING_GROUND_CODE}{}
#'   \item{FISHING_GROUND}{}
#'   \item{FLEET_CODE}{}
#'   \item{FLEET}{}
#'   \item{FISHERY_TYPE_CODE}{}
#'   \item{FISHERY_TYPE}{}
#'   \item{FISHERY_GROUP_CODE}{}
#'   \item{FISHERY_GROUP}{}
#'   \item{FISHERY_CODE}{}
#'   \item{FISHERY}{}
#'   \item{GEAR_CODE}{}
#'   \item{GEAR}{}
#'   \item{IUCN_STATUS_CODE}{}
#'   \item{IUCN_STATUS}{}
#'   \item{SPECIES_WP_CODE}{}
#'   \item{SPECIES_WP}{}
#'   \item{SPECIES_GROUP_CODE{}
#'   \item{SPECIES_GROUP}{}
#'   \item{SPECIES_CATEGORY_CODE}{}
#'   \item{SPECIES_CATEGORY}{}
#'   \item{SPECIES_CODE}{}
#'   \item{SPECIES}{}
#'   \item{SPECIES_SCIENTIFIC}{}
#'   \item{SPECIES_FAMILY}{}
#'   \item{SPECIES_ORDER}{}
#'   \item{IS_IOTC_SPECIES}{}
#'   \item{IS_SPECIES_AGGREGATE}{}
#'   \item{IS_SSI}{}
#'   \item{CATCH}{}
#'   \item{CATCH_UNIT_CODE}{}
#'   \item{CATCH_IN_NUMBERS}{}
#' }
"RSD"

#' The quality of each dataset compared to the NC available each year
#'
#' @format
#' \describe{
#'   \item{YEAR}{}
#'   \item{FLEET_CODE}{}
#'   \item{FLEET}{}
#'   \item{FISHERY_TYPE_CODE}{}
#'   \item{FISHERY_TYPE}{}
#'   \item{FISHERY_GROUP_CODE}{}
#'   \item{FISHERY_GROUP}{}
#'   \item{FISHERY_CODE}{}
#'   \item{FISHERY}{}
#'   \item{GEAR_CODE}{}
#'   \item{GEAR}{}
#'   \item{IUCN_STATUS_CODE}{}
#'   \item{IUCN_STATUS}{}
#'   \item{SPECIES_WP_CODE}{}
#'   \item{SPECIES_WP}{}
#'   \item{SPECIES_GROUP_CODE{}
#'   \item{SPECIES_GROUP}{}
#'   \item{SPECIES_CATEGORY_CODE}{}
#'   \item{SPECIES_CATEGORY}{}
#'   \item{SPECIES_CODE}{}
#'   \item{SPECIES}{}
#'   \item{SPECIES_SCIENTIFIC}{}
#'   \item{SPECIES_FAMILY}{}
#'   \item{SPECIES_ORDER}{}
#'   \item{IS_IOTC_SPECIES}{}
#'   \item{IS_SPECIES_AGGREGATE}{}
#'   \item{IS_SSI}{}
#'   \item{CATCH}{}
#'   \item{CATCH_CE}{}
#'   \item{SAMPLES}{}
#'   \item{NC}{}
#'   \item{CE}{}
#'   \item{SF}{}
#' }
"DQA"
