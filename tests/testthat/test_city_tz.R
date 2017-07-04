library(TimePackage)
context("city_tz") 

test_that("city to timezone", {
  expect_equal(city_tz("new_york"), "America/New_York")
})


  