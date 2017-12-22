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

#' Gerrard Escapement
#'
#' @return The gerrard tbl data frame.
#' @seealso \code{\link{gerrard}}
#' @export
#' @examples
#' get_gerrard()
get_gerrard <- function() kootlake::gerrard

#' Kokanee Escapement
#'
#' The Kokanee escapement.
#'
#' @format A data.frame:
#' \describe{
#'   \item{Year}{The year (int).}
#'   \item{Lardeau}{The Lardeau River escapement (int).}
#'   \item{MeadowCreek}{The Meadow Creek escapement  (int).}
#'   \item{Fecundity}{The mean number of eggs per female  (int).}
#'   \item{LengthMale}{The mean male spawner fork length in mm (int).}
#'   \item{LengthFemale}{The mean female spawner fork length in mm (int).}
#'}
#' @seealso \code{\link{kootlake}}.
"kokanee"

#' Kokanee Escapement
#'
#' @return The kokanee tbl data frame.
#' @seealso \code{\link{kokanee}}
#' @export
#' @examples
#' get_kokanee()
get_kokanee <- function() kootlake::kokanee

#' Kootenay Lake Fishery
#'
#' The Kootenay Lake fishery data.
#'
#' @format A data.frame:
#' \describe{
#'   \item{Year}{The start of the angling season which runs from April to March. (int).}
#'   \item{AnglerHours}{The estimated number of angler hours expended by anglers who purchased a Kootenay Lake Rainbow Trout (KLRT) Conservation Surcharge License (int).}
#'}
#' @seealso \code{\link{kootlake}}.
"fishery"

#' Kootenay Lake Fishery
#'
#' @return The fishery tbl data frame.
#' @seealso \code{\link{fishery}}
#' @export
#' @examples
#' get_fishery()
get_fishery <- function() kootlake::fishery
