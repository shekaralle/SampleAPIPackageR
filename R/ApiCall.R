#' Calls an API
#'
#' This function will call an API using GET and will display data if the request was successful with status code, and if the request was not successful it will show the error status code 404
#' @param URL URL string
#' @return NULL
#' @export
#' @examples
#' ApiCall("http://api.open-notify.org/astros.json")

require(httr)
require(jsonlite)

ApiCall <- function(URL) {
  res<<-GET(URL)

  if(res$status_code==200)
  {
  print(paste('API call successful with status code:',res$status_code))
  # data <- rawToChar(res$content)
  data <- fromJSON(rawToChar(res$content))
  data$people
  } else {
    print(paste('API call was not successful with status code:',res$status_code))
  }
}

