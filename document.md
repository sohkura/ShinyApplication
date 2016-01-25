# Developing Data Product Assignment: Course Project for Shiny Application
========================================================
author: sohkura
date: Sun Jan 10 22:16:54 2016
Shniny Application - Documentation
========================================================

# Introduction

This document describes the Shiny application developed for the assignment. The goal of this application is to apply what we have learned about the shiny development using simply appications. 

# Data

The data used is the 'mtcars' data set provided by R, which was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

A data frame with 32 observations on 11 variables.

[, 1]     mpg	 Miles/(US) gallon
[, 2]	 cyl	 Number of cylinders
[, 3]	 disp	 Displacement (cu.in.)
[, 4]	 hp	 Gross horsepower
[, 5]	 drat	 Rear axle ratio
[, 6]	 wt	 Weight (lb/1000)
[, 7]	 qsec	 1/4 mile time
[, 8]	 vs	 V/S
[, 9]	 am	 Transmission (0 = automatic, 1 = manual)
[,10]	 gear	 Number of forward gears
[,11]	 carb	 Number of carburetors

# Functions

The tool was developed to help provide an interactive analysis for the car mileage per gallon using the ‘mtcars’ data set. 

1. It provides a scatter plot to show mpg (mile per gallon) in the Y axis and other parameters in the X axis. Y axis is fixed, however you can change the X axis by selecting the value from the X axis drop down menu.

2. it provide the additional classifications by selecting the Color value from the Color drop dowm menu. This was implemented using ggplot2 color function.

3. For each plot, it also provide the regression line with 95% confidence interval using ggplot2 functions. 

4. Finally, it is added a manipulate function to allow moving around the mean value of the mpg so that it auto-calculate the mean sum error for each mean you select just for fun. 

# Source Code

There are 2 files, 'ui.R' and 'server.R'. The code is straight forward that uses standard and only simple instructions that we learned.

Thank you.


