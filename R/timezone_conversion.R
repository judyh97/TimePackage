#' Timezone conversion. Converts your current system time to the time of your city of interest.
#'
#' @param tz_2 Timezone 2
#' @param tz_1 Timezone 1
#' @param time Time
#' @return Time converted
#' @examples
#' tz_conversion("Asia/Hong_Kong", "Europe/Rome", "2017-08-20 9:00")
#' tz_conversion("Asia/Hong_Kong")
#' @export
options(warn = -1)
tz_conversion <- function(city, tz_1 = Sys.timezone(), time = Sys.time()) {
  tz_2 = city_tz(city)
  t1 <- as.POSIXct(time, tz = tz_1)
  format(t1, tz = tz_2, usetz = TRUE)
}


