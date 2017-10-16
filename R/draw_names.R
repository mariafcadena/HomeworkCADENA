#' Draws the time series of a set of names
#'
#' @param  names the names that are going to be plot
#' @import gglplot2
#' @return the plot of the time series
#' @export
#'
#' @examples
draw_names <- function(names)
{
  Names_Exist <-filter(name %in% names )
  assertthat(not_empty(Names_Exist))
  Results<-prenoms  %>% filter(name %in% names ) %>% group_by(year, name) %>% summarise(total=sum(n))
  return(ggplot(Results, aes(x=year, y=total,color=name)) + geom_line())
}
