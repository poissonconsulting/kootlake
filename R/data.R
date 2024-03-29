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
#'   \item{FishRemoved}{The total number of fish removed prior to spawning.}
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
#'   \item{Fecundity}{The mean number of eggs per female  (int).}
#'   \item{LengthMale}{The mean male spawner fork length in mm (int).}
#'   \item{LengthFemale}{The mean female spawner fork length in mm (int).}
#'}
#' @seealso \code{\link{kootlake}}.
"kokanee"

#' Kootenay Lake Fishery
#'
#' The Kootenay Lake fishery data.
#'
#' @format A data.frame:
#' \describe{
#'   \item{StartYear}{The start year of the angling season which runs from April to March (int).}
#'   \item{EndYear}{The end year of the angling season which runs from April to March (int).}
#'   \item{Licences}{The number of KLRT licenses sold (int).}
#'   \item{Mailings}{Number of end of season surveys mailed out to licence holders (int).}
#'   \item{Returns}{Number of filled surveys returned (int).}
#'   \item{AnglerHours}{The estimated number of angler hours expended by anglers who purchased a Kootenay Lake Rainbow Trout (KLRT) Conservation Surcharge License (int).}
#'}
#' @seealso \code{\link{kootlake}}.
"fishery"

#' Bull Trout Counts
#'
#' The annual resistivity counter and redd counts for Kaslo and Keen Creeks.
#'
#' @format A tbl data frame:
#' \describe{
#'   \item{Year}{The year (int).}
#'   \item{KasloRedds}{The Kaslo Creek redd count (int).}
#'   \item{KeenRedds}{The Keen Creek redd count (int).}
#'   \item{KasloCounter}{The Kaslo Creek resistivity counter count (int).}
#'}
#' @seealso \code{\link{kootlake}}.
"bulltrout"

#' Rainbow Trout data
#'
#' Data for individual Rainbow Trout in lakes and rivers.
#'
#' @format A data.frame
#' \describe{
#'   \item{Year}{The year (int).}
#'   \item{Month}{The month (int).}
#'   \item{Day}{The day (int).}
#'   \item{Species}{Species by code eg. "RB" (factor, 1 level).}
#'   \item{Length}{Fork length in mm (int).}
#'   \item{Weight}{Weight in kg (int).}
#'   \item{Sex}{Sex, "male" or "female" (factor, 2 levels).}
#'   \item{Fecundity}{number of eggs (int).}
#'   \item{Location}{Lake or River (factor, 2 levels)}
#'   \item{SampleID}{Sample ID}
#'   \item{Source}{The source of the data (char).}
#'   \item{Comment}{comments for observations with year date ranges (char).}
#'}
#' @seealso \code{\link{kootlake}}.
"fish"

#' Fishery Catch Counts
#'
#' Harvested and Released counts for Bull and Rainbow Trout
#'
#' @format A data.frame
#' \describe{
#'  \item{StartYear}{The start year of the angling season (int).}
#'  \item{EndYear}{The end year of the angling season (int).}
#'  \item{Harvested}{Estimated count of individuals harvested (int).}
#'  \item{Released}{Estimated count of individuals released (int).}
#'  \item{MinWeight}{Bottom of weight range (int).}
#'  \item{MaxWeight}{Top of weight range (int).}
#'  \item{Species}{Species, RB or BT (factor. 2 levels).}
#'}
#' @seealso \code{\link{kootlake}}.
"fishery_catch"
