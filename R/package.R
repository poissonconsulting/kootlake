#' Kootenay Lake Data
#'
#' Datasets for Kootenay Lake.
#'
#' Currently just annual peak counts and fish days
#' for the number of Rainbow Trout spawners at Gerrard
#' as provided by the \code{\link{gerrard}} data.
#'
#' @docType package
#' @name kootlake
#' @examples
#' library(ggplot2)
#'
#' data(gerrard)
#' gerrard$Escapement <- gerrard$PeakCount * 3.08
#'
#' ggplot(data = gerrard, aes(x = Year, y = Escapement)) +
#'   geom_line() + expand_limits(y = 0)
NULL
