#' A simple point plot of data
#'
#' @param data the data you want to plot
#' @param x the variable you want on the x-axis
#' @param y the variable you want on the y-axis
#'
#' @return
#' @export
plotting <- function(data, x, y, title = "title", x_lab = "x-lab", y_lab = "y-lab") {
  plot <- ggplot2::ggplot(data, aes(x = x, y = y)) +
    geom_point(alpha = .1, color = "hotpink") +
    labs(title = title,
         x = x_lab,
         y = y_lab)
  theme_minimal()
  return(plot)
}
