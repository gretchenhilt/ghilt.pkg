#' Select specific columns out of your data set
#' 
#' Be sure to set your desired columns to a variable before you start
#' Returns your specific columns in a table
#' 
#' @param data what dataset you are using
#' @param col_1 the first column name that you want to combine
#' @param col_2 the second column name that you want to combine
#' @param separator how you will have the new outcome divided - in this case it is preset to a hyphen. 
#' @return clean - the columns you selected in table form
#' 
#' @export

combine_cols <- function(data, col_1, col_2, separator = "_") {
  if(is.data.frame(data) == TRUE) {
  newbies <- data %>% 
    mutate(new_column= paste({{col_1}}, {{col_2}}, sep = separator)) %>% 
   select(new_column)
    return(newbies)
  } else {
    print("The columns are not found in your dataset, try again.")
  }
}
