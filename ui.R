shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Are you a Cradle Robber?"),
                sidebarPanel(
                        numericInput('YourAge', 'Your Age in Years', 18, min = 14, max = 100, step = 1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of prediction'),
                        h4('You entered for your age'),
                        verbatimTextOutput("inputValue"),
                        h4('The youngest age your partner can acceptably be '),
                        verbatimTextOutput("prediction")
                )
        )
)