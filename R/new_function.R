#' Yes or No
#'
#' @param filepath
#' @param column
#'
#' @return "Yes!" if there is a yes in the column
#' @export
new_function = function(filepath, column){
  df = readr::read_csv(filepath, na = c("", "-", "NA"))
  result = df %>%
    pull({{column}}) %>%
    na.omit
  if (result == "y"){print("Yes!")}
  else {return(result)}
}
