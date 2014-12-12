library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Prediction MPG using regression model on mtcars data set"),
        sidebarPanel(
            #Generate the inputs for selection
            h2('Please select'),
            radioButtons("cyl", "Cylinder:",
                         c("4" = "4",
                           "6" = "6",
                           "8" = "8")),
            selectInput("am", "Transmission:",
                        c("Automatic" = "Automatic",
                          "Manual" = "Manual")),
            sliderInput('hp', 'Horse power', 52, min = 52, max = 335, step = 1),
            sliderInput('wt', 'Weight (lb/1000)', 1, min = 1, max = 5, step = 0.15),
            submitButton('Submit')
            ),
        mainPanel(
            #Showing the results and prediction value, also plots
            h2('Results:'),
            h3('You have entered:'),
            h4('Cylider:'),
            verbatimTextOutput("inputcyl"),
            h4('Transmission:'),
            verbatimTextOutput("inputam"),
            h4('Horse Power:'),
            verbatimTextOutput("inputhp"),
            h4('Weight (lb/1000):'),
            verbatimTextOutput("inputwt"),
            h4('Prediction Results'),
            verbatimTextOutput("predictmpg"),
            h4('Appendix'),
            plotOutput('plotxy')
            
            )
    )
)
