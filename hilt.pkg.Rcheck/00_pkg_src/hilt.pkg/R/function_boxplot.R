#' Create a boxplot of species and their mass, grouped by the species. 
#' 
#' Use species column as x value and mass as y value. Use species column as group value
#' This function was created to make a boxplot displaying various parameters of critters based on what type of critter they are.
#' 
#' @param data the dataset you wish to create a boxplot from. Must be in dataframe form
#' @param x_var the categorical column from your dataset (independent variable)
#' @param y_var the numerical column from your dataset (dependent variable)
#' @return saveplot returning your boxplot
#' 
#' @export


box_plot <- function(data, x_var, y_var) {
     if(is.data.frame(data) == TRUE) {
         critter_plot <- data %>% 
           ggplot(data, mapping = aes({{x_var}}, {{y_var}})) + geom_boxplot()
         return(critter_plot)
         print("success")
     } else {
         print("your variables aren't working. try again")
     }
 }


