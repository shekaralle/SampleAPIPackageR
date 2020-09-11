\name{ApiCall}
\alias{ApiCall}
\title{Api Call}
\usage{
ApiCall
}
\description{
This function will call an API using GET and will display data if the request was successful with status code, and if the request was not successful it will show the error status code 404
}
\examples{
ApiCall("http://api.open-notify.org/astros.json")
}
