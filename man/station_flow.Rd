% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/station_flow.R
\name{station_flow}
\alias{station_flow}
\title{Download CFS data from selected stations}
\usage{
station_flow(station_id = NULL, start_date = NA, end_date = NA)
}
\arguments{
\item{station_id}{List of USGS CFS station IDs requested by the user}

\item{start_date}{date in character format "YYYY-MM-DD"}

\item{end_date}{date in character format "YYYY-MM-DD"}
}
\value{
List of station IDs containing CFS data for the past X days
}
\description{
Download CFS data from stations that are selected by a user from USGS using their package 'dataRetrieval'
}
