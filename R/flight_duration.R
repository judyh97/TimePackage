#' Calculate flight duration, given departure and arrival details.
#'
#' @param arrival_time Arrival time at the destination. Format YYYY-MM-DD HH:MM:SS
#' @param arrival_city Destination city
#' @param departure_time Departure time at the origin. Format YYYY-MM-DD HH:MM:SS
#' @param departure_city Origin city
#' @return Total flight time (time elapsed between the departure and arrival time)
#' @examples
#' flight_duration("2017-08-20 10:30", "Hong_Kong", "2017-08-19 09:00", "Johannesburg")
#' @export
flight_duration <- function(arrival_time, arrival_city, departure_time, departure_city) {
  arrival_tz = city_tz(arrival_city)
  departure_tz = city_tz(departure_city)
  DepTime <- format(as.POSIXct(departure_time, tz = departure_tz), tz = arrival_tz, usetz = TRUE)
  ArrTime <- format(as.POSIXct(arrival_time, tz = arrival_tz), tz = arrival_tz, usetz = TRUE)
  as.POSIXct(ArrTime) - as.POSIXct(DepTime)
}