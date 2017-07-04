#' Timezone_conversion converts a specified time in city1 to the time in city2.
#'
#' @param city2 name of city the user wants time to be converted to
#' @param city1 name of source time city. Default is system timezone
#' @param time time of source time city, format YYYY-MM-DD HH:MM:SS. Default is system time
#' @return time in desired city
#' @examples
#' tz_conversion("Singapore")
#' tz_conversion("Cape_Town", "Singapore", "2017-07-03 20:00:00")
#' @export
tz_conversion <- function(city2, city1 = Sys.timezone(), time = Sys.time()) {
  if ((missing(city1) && !missing(time)) | (!missing(city1) && missing(time))) {
    stop("time and source-time city must be specified together, if any", call. = FALSE)
  }
  
  else if (missing(city1) && missing(time)) {
    tz1 = Sys.timezone()
  }
  
  else {
    tz1 = city_tz(city1)
  }
  
  tz2 = city_tz(city2)
  time_1 = as.POSIXct(time, tz1)
  time_2 = format(time_1, tz = tz2, usetz = TRUE)
  return(time_2)
}