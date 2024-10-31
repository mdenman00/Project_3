#' Finds average and returns text if size is too small
#'
#' @param filepath The path to the tab-delimited file you want to process
#' @param column The column in the data you want to find the average of
#'
#' @return "Too small" if average is less than it should be
#' @export
gutselli_function = function(filepath, column){
  df = readr::read_csv(filepath, na=c("", "-","NA"))
  result = dplyr::df %>%
    pull({{column}}) %>%
    na.omit %>%
    mean
  if (result < 20){ print("Too Small")}
  else { return(result)}
}

