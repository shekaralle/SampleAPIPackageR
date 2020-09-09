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

