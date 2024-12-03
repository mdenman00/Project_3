# Madies Package
## R package for data analyses set up
### Author: Madie Denman

# This package will be able to do some basic cleaning, graphing, a conversion and a little bit of math (ANOVA and log). The idea behind this project is cleaning data for processing and further analyses and providing basic functions that will setup data for further analyses.

## installation instructions
```
devtools::install_github("mdenman00/Project_3")
library(MadiesPackageR)
```

## where to get the data

+ could use google sheets and give people instructions
+ can stash data in R package

# Function Descriptions

### using function one: finds the average for a column, you set a number and if the average is less "too small" will print
```
MadiesPackageR::gutselli_function()
```

### function two: this will log transform a column and create a new column of the log data
```
MadiesPackageR::log_transform()
```

### function three: creates an ANOVA of data and provides different plots of ANOVA
```
MadiesPackageR:: anova_function()
```

### function four: user can create a point, line or bar graph and set their parameters for each
```
MadiesPackageR::point_line_bar()
```

### function five: this will omit NAs, user has to set what they want to the change the NAs to be (ex: blank space, -,...)
```
MadiesPackageR::clean_data()
```

### function six: converts centimeters to inches in a given column
```
MadiesPackageR::inches()
```
