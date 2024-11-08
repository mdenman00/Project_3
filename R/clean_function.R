#' Replaces blank spaces and omits NAs in data
#'
#' @param filepath
#'
#' @return clean dataframe
#' @export
clean_data = function(filepath) {
  df <- readr::read_csv(filepath, na = c("", "-", "NA")) %>%
    na.omit()
  return(df)
}
