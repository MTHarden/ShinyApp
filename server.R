#diabetesRisk <- function(glucose) glucose / 200
CradleRob <- function(YourAge) (YourAge / 2) + 7
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$YourAge})
                output$prediction <- renderPrint({CradleRob(input$YourAge)})
        }
)