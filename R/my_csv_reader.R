#' Imports in a list the informat of all the csv in a folder
#'
#' @param Folder Folder with the list of csv files
#' @import assertthat
#' @importFrom utils read.csv
#' @importFrom utils write.csv
#' @return a list with all the information of the csv
#' @export
#'
#' @examples
#'
my_csv_reader <- function(Folder)
  {
    assert_that(is.dir(dirname(Folder)))
    assert_that(is.readable(dirname(Folder)))
    List_of_csv <- list.files(path=Folder, pattern="*\\.csv$",full.names = TRUE)
    csv_list <- lapply(List_of_csv, read.csv2)
    return(csv_list)
  }

