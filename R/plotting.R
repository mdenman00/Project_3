#' A simple point plot of data
#'
#' @param data the data you want to plot
#' @param x the variable you want on the x-axis
#' @param y the variable you want on the y-axis
#'
#' @return
#' @export
plotting <- function(data, x, y) {
  plot <- ggplot2::ggplot(data, aes(x = x, y = y)) +
    geom_point +
    theme_minimal
}
