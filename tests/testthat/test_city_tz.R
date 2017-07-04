library(City_Zone)

context("city_tz") 

test_that("area of a circle", {
  expect_equal(ellipse_area(1), pi)
  expect_equal(ellipse_area(1, 0), pi)
})

test_that("area of a line", {
  expect_equal(ellipse_area(1, 1), 0)
})

test_that("area of an ellipse", {
  expect_true(all.equal(ellipse_area(1, 0.5), 2.7207, tolerance = 0.000001))
})
