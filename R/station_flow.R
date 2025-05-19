#' Download CFS data from selected stations
#'
#' @description
#' Download CFS data from stations that are selected by a user from USGS using their package 'dataRetrieval'
#'
#' @param station_id List of USGS CFS station IDs requested by the user
#' @param start_date date in character format "YYYY-MM-DD". CONSIDER A STANDARD 5 DAY PERIOD OR SOMETHING. IF NOT HERE, THEN FOR WEBSITE AT SOME POINT.
#' @param end_date date in character format "YYYY-MM-DD"
#'
#' @return List of station IDs containing CFS data for the past X days
#'
#' @export
#'
station_flow <- function(station_id = NULL,
                         start_date = NA,
                         end_date = NA)
{

  station_id %>%
    dataRetrieval::readNWISuv(parameterCd = "00060",
                              startDate = start_date,
                              endDate = end_date,
                              tz = "PST") %>% # set to PST time zone because it is in UTC by default
    dataRetrieval::renameNWISColumns() # rename columns from their code name to common name


}
# for testing
# station_id = "11532500"
# start_date = "2025-05-05"
# end_date = "2025-05-09"

