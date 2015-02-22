library(shiny)

# Define UI for miles per gallon application
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Miles Per Gallon"),
    
    # Sidebar with controls to select the variable to plot against
    # mpg and to specify whether outliers should be included
    sidebarLayout(
        sidebarPanel(
            selectInput("Transmission", "Transmission:",
                        c("Automatic" = "Automatic",
                          "Manual" = "Manual"))
        ),
        
        # Show the caption and plot of the requested variable against
        # mpg
        mainPanel(
#            h3(textOutput("caption")),
            h3(textOutput("mpg ~ wt")),
            
            plotOutput("mpgPlot")
        )
    )
))