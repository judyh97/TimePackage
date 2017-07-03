#' Timezone conversion. Converts the time of city1 to the time of city2
#'
#' @param time time of city1
#' @param city1 name of city1
#' @param city2 name of city2
#' @return time at city2
#' @examples
#' tz_conversion_b("2017-07-03 20:00", "Singapore", "Cape_Town")
#' @export
options(warn = -1)

tz_conversion_b = function(time, city1, city2) {
  tz1 = city_tz(city1)
  tz2 = city_tz(city2)
  time_1 = as.POSIXct(time, tz1)
  time_2 = format(time_1, tz = tz2, usetz = TRUE)
  return(time_2)
}
