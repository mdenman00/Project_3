#' Converts column from centimeters to inches
#'
#' @param filepath The path to the tab-delimited file you want to process
#' @param column The column in the data you want to convert
#'
#' @return converted data frame column
#' @export
inches = function(filepath, column){
  df <- readr::read_csv(filepath, na = c("", "-", "NA"))
  df[[column]] <- df[[column]] / 2.54
  print(df)
}
