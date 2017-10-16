#' Drwas the timers series of a certain name of a certain sex
#'
#' @param the_name the name that is going to be plot
#' @param the_sex  the specified sex for the name being plotted
#' @import ggplot2
#' @import assertthat
#' @import prenoms
#' @import dplyr
#' @return the time series of the name and sex
#' @export
#'
#' @examples
#' dontrun {draw_a_name(c("Marie", "F"))}
draw_a_name <- function(the_name,the_sex)
{
  assert_that(is.character(the_name))
  assert_that(is.character(the_sex))
  assert_that(not_empty(prenoms::prenoms %>% filter(sex==the_sex, name==the_name )))
  Results<-prenoms::prenoms %>% filter( sex==the_sex, name==the_name ) %>% group_by(year) %>% summarise(total=sum(n))
  return(ggplot(Results, aes(year, total)) + geom_line())
}
