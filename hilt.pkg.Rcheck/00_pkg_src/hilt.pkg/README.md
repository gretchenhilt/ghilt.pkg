# Amphibian and Reptile Field Analysis - An R package for processing amphibian or reptile field collection data. 

##Introduction
This package is intended for field biologists with terrible handwriting to quickly analyze and clean messy data before their supervisor sees.

This package includes 6 functions that perform many different tasks, including removing NA values from your data set; visualizing your data; creating a quick, interactive map of your sample sites; and more. 

Some of the tasks of the functions found in this package are dependent on other R packages. These packages are listed in the "Field Analysis Tutorial". 

##Installing this package and associated required dependcies
To install this package into your own R studio, see the "Field Analysis Tutorial" on the top task bar of the website for a detailed, step-by-step tutorial. 

##Columns of the AGP sample dataset
See below for a comprehensive list of variables and their column names in the AGP dataset: 
- id: field tag identification number specific to organism captured
- date: date of organism capture (month/day/year)
- location: trap location. There are four possible localities, each with their own unique identifier. 
- traptype: type of trap used to capture organism. 
- trapnumber: unique identifier for trap used. 
- critter: common name of organism
- stage: life stage of organism. Will either be Not Tadpole/Larvae or Tadpole/Larvae. 
- mass: mass (in grams) of organism collected in field. 
- svl: snout-vent length (in millimeters) of organism collected in field. 
- recap: whether or not the organism was a recapture. 
- tagnum: tag number associated to each animal. This dataset is missing these values. 
- notes: any specific notes the user noted during capture. 
- recent: organism assigned a 0 or 1 - 0 meaning recent, 1 meaning not recent. This column should not be used for any analysis. 
- username: unique username for the collector. Most of these will be christopher.beachy or blank. 
- lat: latitude of collection site. All of these will be 0. 
- long: longitude of collection site. All of these will be 0. 

These columns are organized, but not perfect. This package will help us organize field data that may have gotten lost in the sauce in translation to excel. 
Thanks for installing this package. Happy herping! 