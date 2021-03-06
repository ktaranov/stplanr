% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/overline.R
\name{gsection}
\alias{gsection}
\title{Function to split overlapping SpatialLines into segments}
\usage{
gsection(sl)
}
\arguments{
\item{sl}{SpatialLinesDataFrame with overlapping Lines to split by
number of overlapping features.}
}
\description{
Divides SpatialLinesDataFrame objects into separate Lines.
Each new Lines object is the aggregate of a single number
of aggregated lines.
}
\examples{
\dontrun{
data(routes_fast)
rsec <- gsection(routes_fast)
plot(routes_fast)
lines(rsec, col = "red", lwd = 3)
length(rsec)
set.seed(5)
sel <- sample(length(rsec), 20)
plot(rsec[sel,], col = "blue", add = TRUE, lwd = 3) # overlapping lines
}
}
