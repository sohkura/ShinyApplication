
# This is the user-interface definition of the coursera data product course project
# fo the Shiny web application, Motor Trend Car Road Test analysis against 
# Mile Per Gallon.
#

library(shiny)

dataset <- mtcars

shinyUI(fluidPage(
    
    titlePanel("Motor Trend Car Road Test using 'mtcars' provided by R"),
    
    p("This is the tool to help analyze car mileage per gallon. Please 
        select a X Axis to show you a dependency for each item against mpg. 
        For eacn mpg graph, you can further analyze the impacts by 
        choosing the Color. Clicking Regression Line will draw the regresion 
        line with 95% confidence interval. Finally you can manipulate the 
        mean which will trigger to auto-calcuate the corresponding Mean Squared 
        Error by playing around the scroll bar of MPG at the mean."),

    sidebarPanel(
        
        selectInput(inputId = 'x', 
                    label = 'X Axis', 
                    choices = names(dataset),
                    selected = names(dataset[1])),
        selectInput(inputId = 'color', 
                    label = 'Color', 
                    choices = c('None', names(dataset))),
        checkboxInput(inputId = 'smooth', 
                      label = 'Regression Line'),
        
        sliderInput('mu', 'Play MPG at the mean',value = 20, min = 10, max = 34, step = 1,),
        
        h5("For the source code and documentation", a("GitHub", href="https://github.com/sohkura/ShinyApplication")),
        p("Note: ui.R and server.R for the source cdoe and document.md for the documentation.")

    ),
    mainPanel(
        plotOutput('plot'),
        h4("Mean of MPG Manipulated"),
        verbatimTextOutput("text1"),
        h4("Mean Squared Error Calculated"),
        verbatimTextOutput("text2")
        
    )
)) 
