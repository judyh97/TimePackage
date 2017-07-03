#' Converts a city name to the associated timezone
#'
#' @param city Name of city
#' @return Name of associated timezone
#' @examples
#' city_tz("Singapore")
#' @export

city_tz <- function(city) {
  city_lower = tolower(city)
  index = which(City_Zone$City == city_lower)[1]
  return(City_Zone$Zone[index])
}
