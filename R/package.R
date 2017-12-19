#' Kootenay Lake Data
#'
#' Annual Rainbow Trout and Kokanee datasets for Kootenay Lake.
#'
#' @docType package
#' @name kootlake
#' @seealso \code{\link{fishery}}, \code{\link{gerrard}} and \code{\link{kokanee}}
#' @examples
#' library(ggplot2)
#'
#' data(gerrard)
#' gerrard$Escapement <- gerrard$PeakCount * 3.08
#'
#' ggplot(data = gerrard, aes(x = Year, y = Escapement)) +
#'   geom_line() + expand_limits(y = 0)
NULL
