#' Imports the information of all the shees in an excel file
#'
#' @param File Excel file with all the information
#' @import re
#' @return List of with the information of all the sheets
#' @export
#'
#' @examples
#' /dontrun {multi_excel("Documents/ExcelFiles")}
multi_excel<-function(File)
{
  Sheets <-read::excel_sheets(File)
  List   <-lapply(Sheets, function(sheet){read::read_excel(File, sheet=sheet)})
  return(List)
}
