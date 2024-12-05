#' Allows you to create a point, line or bar graph with your own parameters
#'
#' @param data the data you want to plot
#' @param x the variable you want on the x-axis
#' @param y the variable you want on the y-axis
#' @param geom what kind of graph do you want (point, bar or line)
#' @param title title of the graph
#' @param x_lab x-axis label
#' @param y_lab y-axis label
#' @param color color you want on your graph
#' @param alpha alpha size
#' @param size size of graph
#' @param theme what theme do you want
#'
#' @return returns graph that user created
#' @export
point_line_bar <- function(data, x, y, geom = "line", title = "Graph", x_lab = "X-axis", y_lab = "Y-axis",
                           color = "hotpink", alpha = 0.5, size = 2, theme = theme_minimal()) {
  library(ggplot2)
  p <- ggplot(data, aes_string(x = x, y = y))
  if (geom == "line") {
    p <- p + geom_line(color = color, linewidth = size, alpha = alpha)
  } else if (geom == "point") {
    p <- p + geom_point(color = color, size = size, alpha = alpha)
  } else if (geom == "bar") {
    p <- p + geom_bar(stat = "identity", fill = color, alpha = alpha)
  } else {
    stop("Invalid geometry type. Choose 'line', 'point', or 'bar'.")
  }
  p <- p + labs(title = title, x = x_lab, y = y_lab) +
    theme
  return(p)
}
