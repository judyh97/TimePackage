city_tz <- function(city) {
  index = which(City_Zone$City == city)[1]
  return(City_Zone$Zone[index])
}
