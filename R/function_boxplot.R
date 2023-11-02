#' Create a boxplot of species and their mass, grouped by the species and save as a png file 
#' 
#' Use species column as x value and mass as y value. Use species column as group value
#' Returns the entire plot saved to a png file with dimensions of 7x5 and dpi = 300
#' 
#' @param data the dataset you wish to create a boxplot from. Must be in dataframe form
#' @param x_var the species column from your dataset (independent variable)
#' @param y_var the mass column from your dataset (dependent variable)
#' @return saveplot returning your boxplot
#' 
#' @export


saveplot <- function(data, x_var, y_var){
  
  critterplot <- ggplot(data = data, aes(x = {{x_var}}, y = {{y_var}})) + geom_boxplot()
  return(saveplot)
  print(critterplot)
}


##this function was created to make a boxplot displaying masses of critters based on what type of critter they are.
#a "save" component was also added into this function so that when the function is run, it will automatically save the file based on what i named it tobe. 
##DONEGAH10/24