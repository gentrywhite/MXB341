#' Data on the US Space Shuttle Solid Rocket Booster (SRB) O-Ring Failures
#'
#' A data set consisting of records from 23 flights of the space shuttle using the SRBs
#'
#' @format A data frame with 23 rows and 6 variables:
#' \describe{
#'   \item{n_oring}{Number of o-rings (6 for all flights) }
#'   \item{n_failure}{0 if no failure occurred and 1 if there was an o-ring failure}
#'   \item{temp}{Temperature at time of launch in Farenheit}
#'   \item{psi}{Pressure Check Test in pounds/square inch}
#'   \item{num}{Number of flight (in order of launch)}
#'   \item{failure}{0 if no failure occurred and 1 if there was an o-ring failure}
#'
#'}
"srb"
