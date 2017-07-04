library(TimePackage)
context("flight_duration")

test_that("flight time difference", {
  expect_equal(flight_duration("2017-08-20 06:00", "new_york", "2017-08-19 09:00", "singapore"), "33 hours")
})