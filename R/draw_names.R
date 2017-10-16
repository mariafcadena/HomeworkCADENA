#' Draws the time series of a set of names
#'
#' @param  names the names that are going to be plot
#' @import ggplot2
#' @import assertthat
#' @import prenoms
#' @import dplyr
#' @return the plot of the time series
#' @export
#'
#' @examples
#' dontrun {draw_names(c("Marie", "Pierre"))}
draw_names <- function(names)
{
  Names_Exist <-prenoms::prenoms %>% filter(name %in% names )
  assert_that(not_empty(Names_Exist))
  Results<-prenoms::prenoms %>% filter(name %in% names ) %>% group_by(year, name) %>% summarise(total=sum(n))
  return(ggplot(Results, aes(x=year, y=total,color=name)) + geom_line())
}
