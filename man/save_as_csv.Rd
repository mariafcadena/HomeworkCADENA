% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_as_csv.R
\name{save_as_csv}
\alias{save_as_csv}
\title{Saves Dataframe as a csv file in a specific path}
\usage{
save_as_csv(DataFrame, Path)
}
\arguments{
\item{DataFrame}{data frame}

\item{Path}{path where the new csv will be stored}
}
\value{
the new file and the path where it is stored
}
\description{
Saves Dataframe as a csv file in a specific path
}
\examples{
dontrun {save_as_csv(iris,"Documents/ExcelFiles")}

}
