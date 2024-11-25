#'Creates an ANOVA and makes plots
#'
#' @param data your dataframe that you want to process
#' @param response the variable that you think is dependent on the predictor
#' @param predictor the variable that explains the relationship
#'
#' @return summary of the ANOVA results and plots of the data
#' @export
#'
anova_function = function(data, response, predictor) {
  formula <- as.formula(paste(response, "~", predictor))
  anova_result <- aov(formula, data = data)
  plot(anova_result)
  return(summary(anova_result))
}
