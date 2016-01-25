
# This is the server logic for the coursera data product course project
# for the Shiny web application, Motor Trend Car Road Test analysis against 
# Mile Per Gallon.
# 

library(shiny)
library(ggplot2)

function(input, output, session) {
    
    dataset <- reactive({
        mtcars
    })
    
    output$plot <- renderPlot({
        
        p <- ggplot(dataset(), aes_string(x=input$x, y="mpg")) + geom_point()
        
        mu <- input$mu
        mse <- mean((mtcars$mpg - mu)^2)
        output$text1 <- renderText(mu)
        output$text2 <- renderText(mse)
        
        p <- p + geom_abline(intercept = mu, slope = 0, col = "orange", size=2 )
        
        if (input$color != 'None')
            p <- p + aes_string(color=input$color)
        
        if (input$smooth)
            p <- p + geom_smooth()
        
        print(p)
    })
} 

