#' Converts a city name to the associated timezone
#'
#' @param city Name of city. Spaces must be indicated by underscores.Not case-sensitive.
#' @return Name of associated timezone
#' @examples
#' city_tz("Singapore") gives "Asia/Singapore"
#' city_tz("Cape_Town") gives "Africa/Johannesburg"
#'
#' @export
city_tz <- function(city) {
  city_lower = tolower(city)

  if (city_lower %in% City_Zone$City == FALSE) {
    stop("City name not recognized. Check spelling and that spaces are indicated by underscores.
         Otherwise, city does not exist in database", call. = FALSE)
  }

  index = which(City_Zone$City == city_lower)[1]
  return(City_Zone$Zone[index])
}
