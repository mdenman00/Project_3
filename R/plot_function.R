#' A simple point plot of data
#'
#' @param data the data you want to plot
#' @param x the variable you want on the x-axis
#' @param y the variable you want on the y-axis
#'
#' @return
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
