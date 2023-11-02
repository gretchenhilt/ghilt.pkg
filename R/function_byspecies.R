graph_byspecies <- function(data, x_var){
  byspecies <- ggplot(data = data, aes(x = {{x_var}})) +
    geom_histogram()
  return(byspecies)
}


#This function was designed to plot the critters and respective parameters relative to each other in a boxplot. 
##NOT DONE10/29
