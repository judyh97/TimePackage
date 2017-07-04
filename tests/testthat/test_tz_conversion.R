library(TimePackage)
context("tz_conversion")

test_that("convert timezones", {
  expect_equal(tz_conversion("Cape_Town", "Singapore", "2017-07-03 20:00:00"), "2017-07-03 14:00:00 SAST")
})

