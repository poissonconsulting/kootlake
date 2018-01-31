#' Kootenay Lake Data
#'
#' Annual Rainbow Trout, Bull Trout and Kokanee datasets for Kootenay Lake.
#'
#' It includes the `kl_estimate_na()` function to estimate missing variable values
#' from a predictor using a linear model.
#' By default it estimates missing Bull Trout redd counts for Kaslo Creek
#' using the resistivity counter counts.
#'
#' @docType package
#' @name kootlake
#' @seealso \code{\link{bulltrout}}, \code{\link{fishery}}, \code{\link{gerrard}} and \code{\link{kokanee}}
#' @examples
#' library(ggplot2)
#'
#' data(gerrard)
#' gerrard$Escapement <- gerrard$PeakCount * 3.08
#'
#' ggplot(data = gerrard, aes(x = Year, y = Escapement)) +
#'   geom_line() + expand_limits(y = 0)
NULL
