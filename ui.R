library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Startup Valuation Calculator"),
    
    sidebarPanel(
      numericInput('yearsExp', "Founders' Years of Experience", 1, min = 0, max = 20, step = 1),
      numericInput('revenue', 'Revenue Ratio: Revenue/Initial Investment', 1, min = 0, max = 20, step = 1),
      numericInput('zeitgeist', "Zeitgeist Correlation and Trend Capture", 0.3, min = -1, max = 1, step = .1),
      numericInput('celeb', "Celebrity Appeal (Shark-Tank Effect)", 0.1, min = 0, max=3, step=.3),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Your values result in a very crude valuation of... '),
      verbatimTextOutput("prediction")
    )
  )
)