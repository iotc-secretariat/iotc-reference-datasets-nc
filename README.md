# Retained catch datasets

This R project is used to build the `iotc.data.reference.datasets.NC` R package and contains all necessary code and resources to create the various retained catch datasets from the data currently available in the IOTC databases.

It uses the `iotc.base.common.data` library to access the current data storage (`IOTDB`) but does not explicitly depend on it. This means that the final package can be used in other R projects / scripts that need any of the exported datasets, without introducing any type of dependency from the IOTC databases.

In fact, *live* access to the IOTC databases is only required when **building** the project.

## How to initialise the datasets

Simply run the `load_datasets.R` script included under the `data-raw` folder.

The script will take care of:

-   loading all current _raw_ retained catch data (`IOTDB`.`dbo`.`V_LEGACY_NC`), _best scientific_estimates_ of retained catch data (`IOTDB`.`dbo`.`est_NCdissag`), and the estimated retained catches in weight and number (`WP_CE_raised`.`dbo`.`CA_RAISED`) using the IOTC data libraries 
-   loading the _non factorised_ version of the _raw_ retained catch data (`IOTDB`.`dbo`.`V_LEGACY_NC`) which contains data for *ALL* fisheries and species (i.e., none of these collapses under the _other_ category)
-   producing the `.rda` R data file corresponding to each of the three retained catch datasets above, eventually storing it under the `data` folder of the project
-   uploading the `.rda` files onto the [*Downloads* section](https://bitbucket.org/iotc-ws/iotc-reference-datasets-nc/downloads/) of the BitBucket repository

## How to build the package

Run the `build_and_upload.R` script.

This will:

-   load all necessary datasets (see above)
-   build the package
-   upload the `.rda` dataset files and the built package (as a `.tar.gz` file) onto the [*Downloads* section](https://bitbucket.org/iotc-ws/iotc-reference-datasets-nc/downloads/) of the BitBucket repository

For this to work, it is necessary to configure in advance the `BITBUCKET_UPLOAD_NC_DATASET_TOKEN` as an environment variable that should be assigned an access token created for the specific repository (with the `repository:write` OAuth 2.0 scope).

The creation of the token is generally [performed by the repository administrators](https://support.atlassian.com/bitbucket-cloud/docs/create-a-repository-access-token/) and the tokens, once created, shall be stored securely as they won't be accessible again after the creation.

See also the specific section of the [BitBucket cloud REST API](https://developer.atlassian.com/cloud/bitbucket/rest/api-group-downloads/#api-repositories-workspace-repo-slug-downloads-post).

## How to install the package

Build the package first, then from a command shell run:

```         
Rcmd.exe INSTALL --preclean --no-multiarch --with-keep.source iotc-reference-datasets-nc
```

or select `Build` / `Install package` from within R studio

## Publicly exported package content

### Datasets

1.  `RAW` - *raw* retained catch data for all species (including bycatch ones)
2.  `RAW_NF` - Same as `RAW` but not factorised by fishery and species
3.  `SCI` - *best scientific estimates* of retained catches **for the 16 IOTC species only**, fully disaggregated by species and gear
4.  `RSD` - estimates of retained catches **in weight and numbers** for the five major IOTC species (**albacore tuna**, **bigeye tuna**, **skipjack tuna**, **swordfish**, and **yellowfin tuna**) fully disaggregated by species and gears and with detailed school-type information
5.  `DQA` - data quality of the three major IOTC datasets (retained catches, catch and effort, size-frequency) compared to the available retained catches per year
6.  `LAST_UPDATE` - the date of last update / production of the datasets

## Structure of the datasets

### `RAW`, `RAW_NF` and `SCI`

-   `YEAR` Gregorian calendar year of the fishing activities reported through the datasets
-   `FISHING_GROUND_CODE` Code of legacy [IOTC main areas](https://data.iotc.org/reference/latest/domain/legacy/#mainAreas)
-   `FISHING_GROUND` Name of legacy [IOTC main areas](https://data.iotc.org/reference/latest/domain/legacy/#mainAreas)
-   `FLEET_CODE` Code of legacy [IOTC fishing fleets](https://data.iotc.org/reference/latest/domain/legacy/#fleets)
-   `FLEET` Name of legacy [IOTC fishing fleets](https://data.iotc.org/reference/latest/domain/legacy/#fleets)
-   `FISHERY_TYPE_CODE` \< *to be described* \>
-   `FISHERY_TYPE` \< *to be described* \>
-   `FISHERY_GROUP_CODE` \< *to be described* \>
-   `FISHERY_GROUP` \< *to be described* \>
-   `FISHERY_CODE` \< *to be described* \>
-   `FISHERY` \< *to be described* \>
-   `GEAR_CODE` Code of legacy [IOTC fishing gears](https://data.iotc.org/reference/latest/domain/legacy/#gears)
-   `GEAR` Name of legacy [IOTC fishing gears](https://data.iotc.org/reference/latest/domain/legacy/#gears)
-   `IUCN_STATUS_CODE` \< *to be described* \>
-   `IUCN_STATUS` \< *to be described* \>
-   `SPECIES_WP_CODE` \< *to be described* \>
-   `SPECIES_WP` \< *to be described* \>
-   `SPECIES_GROUP_CODE` \< *to be described* \>
-   `SPECIES_GROUP` \< *to be described* \>
-   `SPECIES_CATEGORY_CODE"`SPECIES_CATEGORY\` \< *to be described* \>
-   `SPECIES_CODE` Code of legacy [IOTC species](https://data.iotc.org/reference/latest/domain/legacy/#species)
-   `SPECIES` Common English name of legacy [IOTC species](https://data.iotc.org/reference/latest/domain/legacy/#species)
-   `SPECIES_SCIENTIFIC` Scientific name of legacy [IOTC species](https://data.iotc.org/reference/latest/domain/legacy/#species)
-   `SPECIES_FAMILY` \< *to be described* \>
-   `SPECIES_ORDER` \< *to be described* \>
-   `IS_IOTC_SPECIES` Indicates whether the taxon is a species or a group of [IOTC species](https://data.iotc.org/reference/latest/domain/biology/#IOTCspecies)
-   `IS_SPECIES_AGGREGATE` Indicates whether the taxon represents an aggregate of different species
-   `IS_SSI` Indicates whether the taxon is an [IOTC Species of Special Interest](https://data.iotc.org/reference/latest/domain/biology/#SSIspecies)
-   `CATCH` Estimate of retained catch in live weight equivalent 
-   `CATCH_UNIT_CODE` Code of legacy [IOTC catch units](https://data.iotc.org/reference/latest/domain/legacy/#catchUnits) 
-   `FATE_TYPE_CODE` \< *to be described* \>
-   `FATE_TYPE` \< *to be described* \>
-   `FATE_CODE` \< *to be described* \>
-   `FATE` \< *to be described* \>

### `RSD`

-   `YEAR` \< *to be described* \>
-   `QUARTER` \< *to be described* \>
-   `FISHING_GROUND_CODE` \< *to be described* \>
-   `FISHING_GROUND` \< *to be described* \>
-   `FLEET_CODE` \< *to be described* \>
-   `FLEET` \< *to be described* \>
-   `FISHERY_TYPE_CODE` \< *to be described* \>
-   `FISHERY_TYPE` \< *to be described* \>
-   `FISHERY_GROUP_CODE` \< *to be described* \>
-   `FISHERY_GROUP` \< *to be described* \>
-   `FISHERY_CODE` \< *to be described* \>
-   `FISHERY` \< *to be described* \>
-   `GEAR_CODE` \< *to be described* \>
-   `GEAR` \< *to be described* \>
-   `CATCH_SCHOOL_TYPE_CODE` \< *to be described* \>
-   `IUCN_STATUS_CODE` \< *to be described* \>
-   `IUCN_STATUS` \< *to be described* \>
-   `SPECIES_WP_CODE` \< *to be described* \>
-   `SPECIES_WP` \< *to be described* \>
-   `SPECIES_GROUP_CODE` \< *to be described* \>
-   `SPECIES_GROUP` \< *to be described* \>
-   `SPECIES_CATEGORY_CODE` \< *to be described* \>
-   `SPECIES_CATEGORY` \< *to be described* \>
-   `SPECIES_CODE` \< *to be described* \>
-   `SPECIES` \< *to be described* \>
-   `SPECIES_SCIENTIFIC` \< *to be described* \>
-   `SPECIES_FAMILY` \< *to be described* \>
-   `SPECIES_ORDER` \< *to be described* \>
-   `IS_IOTC_SPECIES` \< *to be described* \>
-   `IS_SPECIES_AGGREGATE` \< *to be described* \>
-   `IS_SSI` \< *to be described* \>
-   `CATCH` \< *to be described* \>
-   `CATCH_UNIT_CODE` \< *to be described* \>
-   `CATCH_IN_NUMBERS` \< *to be described* \>

### `DQA`

-   `YEAR` \< *to be described* \>
-   `FLEET_CODE` \< *to be described* \>
-   `FLEET` \< *to be described* \>
-   `FISHERY_TYPE_CODE` \< *to be described* \>
-   `FISHERY_TYPE` \< *to be described* \>
-   `FISHERY_GROUP_CODE` \< *to be described* \>
-   `FISHERY_GROUP` \< *to be described* \>
-   `FISHERY_CODE` \< *to be described* \>
-   `FISHERY` \< *to be described* \>
-   `GEAR_CODE` \< *to be described* \>
-   `GEAR` \< *to be described* \>
-   `IUCN_STATUS_CODE` \< *to be described* \>
-   `IUCN_STATUS` \< *to be described* \>
-   `SPECIES_WP_CODE` \< *to be described* \>
-   `SPECIES_WP` \< *to be described* \>
-   `SPECIES_GROUP_CODE` \< *to be described* \>
-   `SPECIES_GROUP` \< *to be described* \>
-   `SPECIES_CATEGORY_CODE` \< *to be described* \>
-   `SPECIES_CATEGORY` \< *to be described* \>
-   `SPECIES_CODE` \< *to be described* \>
-   `SPECIES` \< *to be described* \>
-   `SPECIES_SCIENTIFIC` \< *to be described* \>
-   `SPECIES_FAMILY` \< *to be described* \>
-   `SPECIES_ORDER` \< *to be described* \>
-   `IS_IOTC_SPECIES` \< *to be described* \>
-   `IS_SPECIES_AGGREGATE` \< *to be described* \>
-   `IS_SSI` \< *to be described* \>
-   `CATCH` \< *to be described* \>
-   `CATCH_CE` \< *to be described* \>
-   `SAMPLES` \< *to be described* \>
-   `NC` \< *to be described* \>
-   `CE` \< *to be described* \>
-   `SF` \< *to be described* \>
