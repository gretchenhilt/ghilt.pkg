#' Remove NAs from data set
#' 
#' Use your data set as a whole to remove all NAs
#' 
#' @param data the dataset you desire to remove NAs from 
#' @return clean the new data set without NAs as a new table 
#' 
#' @export


AGPna <- function(data){
  clean <- na.omit(data)
  return(clean)
}

#This function was created to clean up the data by removing all the NAs from the dataset.
##doneGAH