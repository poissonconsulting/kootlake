#' Estimate Missing Values
#'
#' Estimates missing variable values from a predictor using a linear model.
#'
#' @param x A data frame with columns of the variable and predictor.
#' @param variable A string of the name of the variable column.
#' @param predictor A string of the name of the predictor column.
#'
#' @return The original data frame with missing variable values replaced by the estimated value.
#' @export
#'
kl_estimate_na <- function(
  x = kootlake::bulltrout, variable = "KasloRedds", predictor = "KasloCounter") {
  .Deprecated()
  chk_data(x)
  chk_string(variable)
  chk_string(predictor)
  chk_colnames(x, c(variable, predictor))

  mod <- lm(x[[variable]] ~ x[[predictor]], data = x)

  na_variable <- is.na(x[[variable]])
  x[[variable]][na_variable] <- predict(mod, newdata = x)[na_variable]
  x
}
