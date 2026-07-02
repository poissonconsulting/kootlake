# Kootenay Lake Data

Annual Rainbow Trout, Bull Trout and Kokanee datasets for Kootenay Lake.

## Details

It includes the \`kl_estimate_na()\` function to estimate missing
variable values from a predictor using a linear model. By default it
estimates missing Bull Trout redd counts for Kaslo Creek using the
resistivity counter counts.

## See also

[`bulltrout`](https://poissonconsulting.github.io/kootlake/reference/bulltrout.md),
[`fishery`](https://poissonconsulting.github.io/kootlake/reference/fishery.md),
[`gerrard`](https://poissonconsulting.github.io/kootlake/reference/gerrard.md)
and
[`kokanee`](https://poissonconsulting.github.io/kootlake/reference/kokanee.md)

## Examples

``` r
library(ggplot2)

data(gerrard)
gerrard$Escapement <- gerrard$PeakCount * 3.08

ggplot(data = gerrard, aes(x = Year, y = Escapement)) +
  geom_line() + expand_limits(y = 0)
```
