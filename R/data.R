#' Gerrard Escapement
#'
#' The Gerrard Rainbow Trout spawner counts.
#'
#' The total escapement can be estimated by multiplying the peak count by 3.08
#' or by dividing the total number of fish days by the residence time (currently)
#' assumed to be 11.9 days.
#'
#' @format A data.frame:
#' \describe{
#'   \item{Year}{The year of the spawner count (int).}
#'   \item{PeakCount}{The peak count (int).}
#'   \item{FishDays}{The total number of fish days (int).}
#'}
#' @seealso \code{\link{kootlake}}.
"gerrard"

#' Kokanee Escapement
#'
#' The Kokanee escapement.
#'
#' @format A data.frame:
#' \describe{
#'   \item{Year}{The year (int).}
#'   \item{Lardeau}{The Lardeau River escapement (int).}
#'   \item{MeadowCreek}{The Meadow Creek escapement  (int).}
#'   \item{Fecundity}{The average number of eggs per female  (int).}
#'}
#' @seealso \code{\link{kootlake}}.
"kokanee"
