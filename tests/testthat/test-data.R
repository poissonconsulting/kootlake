context("data")

test_that("fishery", {
 expect_identical(checkr::check_data(kootlake::fishery, values = list(
    Year = c(1991L, 2020L),
    AnglerHours = c(0L, 1000000L, NA)),
    exclusive = TRUE,
    order = TRUE,
    key = "Year"),
  kootlake::fishery)
})

test_that("gerrard", {
 expect_identical(checkr::check_data(kootlake::gerrard, values = list(
    Year = c(1961L, 2020L),
    PeakCount = c(0L, 1500L),
    FishDays = c(0L, 20000L)
    ),
    exclusive = TRUE,
    order = TRUE,
    key = "Year"),
  kootlake::gerrard)
})

test_that("kokanee", {
 expect_identical(checkr::check_data(kootlake::kokanee, values = list(
    Year = c(1964L, 2020L),
    Lardeau = c(1000L, 5000000L, NA),
    MeadowCreek = c(1000L, 3000000L),
    Fecundity = c(150L, 600L, NA),
    LengthMale = c(150L, 450L, NA),
    LengthFemale = c(150L, 450L, NA)
    ),
    exclusive = TRUE,
    order = TRUE,
    key = "Year"),
  kootlake::kokanee)
})
