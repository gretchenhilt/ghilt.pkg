#' Remove NAs from data set. 
#' 
#' This function was created to clean up the data by removing all the NAs from the dataset.
#' 
#' @param data the dataset you desire to remove NAs from 
#' @return clean the new data set without NAs as a new table 
#' 
#' @export

remove_nas <- function(data){
     if(is.data.frame(data) == TRUE){
     clean <- data %>% 
         na.omit()
         return(clean)
     } else {
         print("NA's are still here, check again.")
     }
}
