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
point_line_bar = function(data, x, y, geom = "point", title = "title", x_lab = "x-lab", y_lab = "y-lab",
                     color = "hotpink", alpha = 0.5, size = 2, theme = theme_minimal()) {
  geoms = list(
    point = geom_point(color = color, alpha = alpha, size = size),
    line = geom_line(color = color, size = size),
    bar = geom_bar(stat = "identity", fill = color, alpha = alpha))
  plot = ggplot2::ggplot(data, aes(x = {{ x }}, y = {{ y }})) +
    geoms[[geom]] +
    labs(title = title, x = x_lab, y = y_lab) +
    theme
  return(plot)
}
