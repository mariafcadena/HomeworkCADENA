#' Imports in a list the informat of all the csv in a folder
#'
#' @param Folder Folder with the list of csv files
#' @import assert_that
#' @return a list with all the information of the csv
#' @export
#'
#' @examples
my_csv_reader <- function(Folder)
{
  assert_that(is.dir(Folder))
  assert_that(is.readable(dirname(Folder)))
  List_of_csv <- list.files(path=Folder, pattern="*\\.csv$",full.names = TRUE)
  assert_that(not_empty(List_of_csv))
  csv_list <- lapply(List_of_csv, read.csv)
  return(csv_list)
}

