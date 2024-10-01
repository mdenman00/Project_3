gutselli_function = function(filepath, column){
  df = read_csv(filepath, na=c("", "-","NA"))
  result = df %>%
    pull({{column}}) %>%
    na.omit %>%
    mean
  if (result < 20){ print("Too Small")}
  else { return(result)}
}
