#' Replaces NA values of users choice and omits NAs in data
#'
#' @param filepath
#'
#' @return clean dataframe
#' @export
clean_data = function(filepath, na_values = c()) {
  df <- readr::read_csv(filepath, na = c(na_values, "-", "NA")) %>%
  na.omit()
  return(df)
}

