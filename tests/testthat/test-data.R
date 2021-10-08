test_that("bulltrout", {
 expect_invisible(chk::check_data(kootlake::bulltrout, values = list(
    Year = c(1964L, 2020L),
    KasloRedds = c(100L, 2000L, NA),
    KeenRedds = c(10L, 500L, NA),
    KasloCounter = c(100L, 2000L, NA)),
    exclusive = TRUE,
    order = TRUE,
    key = "Year"))
})

test_that("fishery", {
 expect_invisible(chk::check_data(kootlake::fishery, values = list(
    StartYear = c(1980L, 2020L),
    EndYear = c(1980L, 2020L),
    AnglerHours = c(0, 1000000, NA)),
    exclusive = TRUE,
    order = TRUE,
    key = "StartYear"))
})

test_that("gerrard", {
 expect_invisible(chk::check_data(kootlake::gerrard, values = list(
    Year = c(1L),
    PeakCount = c(0L, 1500L),
    FishDays = c(0L, 20000L, NA)
    ),
    exclusive = TRUE,
    order = TRUE,
    key = "Year"))
})

test_that("kokanee", {
 expect_invisible(chk::check_data(kootlake::kokanee, values = list(
    Year = c(1964L, 2020L),
    Lardeau = c(1000L, 5000000L, NA),
    MeadowCreek = c(1000L, 3000000L),
    Fecundity = c(150L, 750L, NA),
    LengthMale = c(150L, 450L, NA),
    LengthFemale = c(150L, 450L, NA)
    ),
    exclusive = TRUE,
    order = TRUE,
    key = "Year"))
})
