library(caret)
library(ggplot2)
library(GGally)
#This example I use mtcars to do the project
data(mtcars)
#select only wanted columns that related with the inputs for the prediction
#which are mpg, cyl, am, hp, and wt
traindata <- mtcars[,c(1,2,4,6,9)]
#correct the classes of some variables
traindata$am <- factor(traindata$am, labels = c("Manual", "Automatic"))
traindata$cyl <- factor(traindata$cyl)

shinyServer(
    function(input,output){
        #display inputs that have entered
        output$inputcyl <- renderPrint({input$cyl})
        output$inputam <- renderPrint({input$am})
        output$inputhp <- renderPrint({input$hp})
        output$inputwt <- renderPrint({input$wt})
        #Train the model
        fit <- train(mpg~., data = traindata, method = "glm")         
        #Predict MPG from input values and print it out
        output$predictmpg <- renderPrint({
            predictdata <- data.frame(cyl = factor(input$cyl), hp = input$hp, 
                                      wt = input$wt, am = factor(input$am))
            p <- predict(fit,newdata = predictdata)
            paste("The prediction mpg is", p, sep = " " )
            })
        #Generate the pair plots as reference
        output$plotxy <- renderPlot({ggpairs(traindata, colour = 'am', 
                                             title = "Pair plot on Training data to use on MPG Prediction")})
        
    }    
    
)