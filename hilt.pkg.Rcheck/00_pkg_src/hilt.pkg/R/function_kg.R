#' Convert grams to kilograms 
#' 
#' Create new columns of kg measurements converted from original grams column. 
#' The purpose of this function is to be able to automatically convert all mass values (in grams) to kilograms and creating a new column with that data. 
#' 
#' @param data the dataset you desire to create a kg column in. Be sure to have a mass column with numerical data.
#' @return kg the new dataset with two new columns - a kilogram column and a doubled kilogram column 
#' 
#' @export


convert <- function(data) {
    kg <- data %>% 
        mutate(mass_kg = mass/1000, mass_kg2 = mass_kg*2)
          if (!all(sapply(kg[c("mass_kg", "mass_kg2")], is.numeric))) {
          stop("Columns 'mass_kg' and 'mass_kg2' must be numeric")
    } else {
        return(kg)
    }
}
