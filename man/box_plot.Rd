% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function_boxplot.R
\name{box_plot}
\alias{box_plot}
\title{Create a boxplot of species and their mass, grouped by the species.}
\usage{
box_plot(data, x_var, y_var)
}
\arguments{
\item{data}{the dataset you wish to create a boxplot from. Must be in dataframe form}

\item{x_var}{the categorical column from your dataset (independent variable)}

\item{y_var}{the numerical column from your dataset (dependent variable)}
}
\value{
saveplot returning your boxplot
}
\description{
Use species column as x value and mass as y value. Use species column as group value
This function was created to make a boxplot displaying various parameters of critters based on what type of critter they are.
}
