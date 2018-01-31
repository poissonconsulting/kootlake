context("estimate-na")

test_that("kl_estimate_na", {
  x <- kl_estimate_na()
  y <- kootlake::bulltrout
  y$KasloRedds <- as.double(y$KasloRedds)
  y$KasloRedds[y$Year == 2010] <- x$KasloRedds[x$Year == 2010]
  expect_identical(x,y)
})
