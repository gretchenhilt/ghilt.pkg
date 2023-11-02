#' Convert grams to kilograms 
#' 
#' Create new columns of kg measurements converted from original grams column. 
#' 
#' @param data the dataset you desire to create a kg column in. Be sure to have a mass column with numerical data.
#' @return kg the new dataset with two new columns - a kilogram column and a doubled kilogram column 
#' 
#' @export


convert <- function(data){
  kg <- data %>%
    mutate(mass_kg = mass/1000, mass_kg2 = mass_kg*2)
  return(kg)
}

#The purpose of this function is to be able to automatically convert all mass values (in grams) to kilograms and creating a new column with that data. 
