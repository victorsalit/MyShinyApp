library(shiny)
library(datasets)

mpgData <- mtcars
mpgData$transmission <- factor(mpgData$am, labels=c("Automatic", "Manual"))
manuals <- subset(mpgData,transmission=='Manual')
automatics <- subset(mpgData,transmission=='Automatic')


shinyServer(function(input, output) {
    
    # Generate a plot for the requested transmission
    output$mpgPlot <- renderPlot({
            if(input$Transmission == "Automatic"){
                plot(automatics$wt, automatics$mpg, type = "p", col = "blue", 
                     main = "Fuel consumption with automatic transmission", 
                     xlab = "Car Weight [1000 lb]",
                     ylab = "mpg")
            } else {
                plot(manuals$wt, manuals$mpg, type = "p", col = "blue",
                     main = "Fuel consumption with manual transmission", 
                     xlab = "Car Weight [1000 lb]",
                     ylab = "mpg")
            }
        })    
})