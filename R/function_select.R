#' Select specific columns out of your data set
#' 
#' Be sure to set your desired columns to a variable before you start
#' Returns your specific columns in a table
#' 
#' @param data what dataset you are using
#' @param columns what columns you are pulling out. You should have set them to a variable first
#' @return clean - the columns you selected in table form
#' 
#' @export

select_AGP <- function(data, columns){
  clean <- data %>% 
    na.omit(data) %>% 
    select(all_of({{columns}}))
  return(clean)
}


#This function was created to select specific columns out of the total dataset.
#For my final project, I can edit the original cols to select what columns I want to work with. 
#DONEGAH10/24