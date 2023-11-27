#' Run a linear model with two parameters. 
#' 
#' You must have one categorical value (with three type possible), and one numerical (continuous) variable. 
#' Returns a summary table of summary statistics.
#' 
#' @param data the dataset you wish to run the linear model from. 
#' @param dependent_col the response variable - must be numerical. When running the function, it must be put into "quotes." 
#' @param independent_col the predictor variable - must be categorical. When running the function, it must be put into "quotes." 
#' @return return_summary the summary stats for your linear model
#' 
#' @export

AGP_linearmod <- function(data, dependent_col, independent_col){
  if(is.numeric({{data[[dependent_col]]}})){
    final <- data %>% 
      select(a = quo_name(dependent_col), starts_with(independent_col)) %>% 
      lm(a~., data = .) %>% 
      summary()
    return(final)
  }else{
    print("dependent variable must be numeric")
  }
  }
