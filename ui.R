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
                          "Manual" = "Manual")),
            p("Select your favorite transmission type and see the fuel consumption as a function of car weight.")
        ),
        
        # Plot the fuel consumption
        mainPanel(
            plotOutput("mpgPlot")
        )
    )
))