#' Log10 transform data column
#'
#' @param filepath The path to the tab-delimited file you want to process
#' @param column The column in the data you want to transform
#'
#' @return a new column with the transformed data
#' @export
log_transform <- function(filepath, column) {
  df <- readr::read_csv(filepath, na = c("", "-", "NA"))
  df <- df %>% dplyr::filter(!is.na(.data[[column]]))
  log_df <- df %>%
    mutate(row_id = row_number()) %>%
    mutate(log_value = log10(.data[[column]])) %>%
    select(row_id, log_value)
  df <- df %>% mutate(row_id = row_number())
  df <- right_join(df, log_df, by = "row_id") %>%
    select(-row_id)
  return(df)
}
