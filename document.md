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

1. mpg	 Miles/(US) gallon
2. cyl	 Number of cylinders
3. disp	 Displacement (cu.in.)
4. hp	 Gross horsepower
5. drat	 Rear axle ratio
6. wt	 Weight (lb/1000)
7. qsec	 1/4 mile time
8. vs	 V/S
9. am	 Transmission (0 = automatic, 1 = manual)
10. gear	 Number of forward gears
11. carb	 Number of carburetors

# Functions and Operations

The tool was developed to provide an interactive analysis for the car mileage per gallon using the ‘mtcars’ data set. 

1. It provides a scatter plot to show the mpg (mile per gallon) in the Y axis and all other parameters in the X axis. Y axis is fixed, however you can change the X axis by selecting the value from the X axis drop down menu that are from 'mtcars' data set.

The default is 'mpg' vs ' mpg'. Please select an item from the X axis drop down menu. The toll redraw the plot based on your selection,

2. It further provides additional color code classifications in the graph by selecting the Color value from the Color drop down menu that are from 'mtcars' data set.

The default is not selected, i.e., 'None'. Once you select the color from the drop down, each point will be color coded based on the item selected. You will see the legend outside of the graph.

3. For each plot, the regression line can be plotted to the graph. 

Please click 'Regression Line' check box, which will draw a regression line with smooth curve with 85% confidence interval. 

4. Tt provides a manipulate capability to allow moving around the mean value of the mpg so that it moves the mean in the graph and that auto-calculates the mean squared error for each mean selected.

This is for fun. When you move the cursor back and forth under the 'Play MPG at the mean', the mean horizontal line will move accordingly, and the mean value and mean square error values will be displyed in the corresponding text boxes.

# Source Code

There are 2 files: 
1) ui.R
3) server.R 

The code is simple that uses standard implementations that we learned.

Thank you.


