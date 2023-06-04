#' Covid 19 Data from John's Hopkins
#'
#' A data set containing global records of Covid 19 cases, deaths, and recovery.
#'
#'
#' @format A data frame with 59024 rows and 8 variables:
#' \describe{
#'   \item{Province/State}{Province or State where the data were collected}
#'   \item{Country/Region}{Country or Region where the data were collected}
#'   \item{Lat}{Lattitude associated with data (typically centroid of smallest available geographic unit)}
#'   \item{Long}{Long associated with data (typically centroid of smallest available geographic unit)}
#'   \item{date}{Date of recorded data}
#'   \item{cases}{Number of cases recorded in a geographic unit on a specified date.}
#'   \item{deaths}{Number of deaths recorded in a geographic unit on a specified date.}
#'   \item{recovered}{Number of recovered cases recorded in a geographic unit on a specified date.}
#'
#'   ...
#' }
#' @source \url{https://data.humdata.org/dataset/novel-coronavirus-2019-ncov-cases}
"covid_19"
