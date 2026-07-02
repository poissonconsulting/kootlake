# Estimate Missing Values

Estimates missing variable values from a predictor using a linear model.

## Usage

``` r
kl_estimate_na(
  x = kootlake::bulltrout,
  variable = "KasloRedds",
  predictor = "KasloCounter"
)
```

## Arguments

- x:

  A data frame with columns of the variable and predictor.

- variable:

  A string of the name of the variable column.

- predictor:

  A string of the name of the predictor column.

## Value

The original data frame with missing variable values replaced by the
estimated value.
