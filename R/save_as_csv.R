#' Saves Dataframe as a csv file in a specific path
#'
#' @param  DataFrame data frame
#' @param  Path      path where the new csv will be stored
#' @import assert_that
#' @return the new file and the path where it is stored
#' @export
#'
#' @examples
#'
save_as_csv <- function(DataFrame, Path)
{
  #Validations for the DataFrame
  assert_that(not_empty(DataFrame))
  assert_that(is.data.frame(DataFrame))
  #Validations for the Path
  assert_that(is.writeable(dirname(Path)))
  assert_that(has_extension(Path,"csv"))
  write.csv2(DataFrame,Path)
  return(dirname(Path))
}
