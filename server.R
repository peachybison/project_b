library(shiny)

valuation <- function(yearsExp, revenue, zeitgeist, celeb) yearsExp * revenue* zeitgeist* celeb* 500000

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$yearsExp})
    output$prediction <- renderPrint({valuation(input$yearsExp, input$revenue, input$zeitgeist,
                                                input$celeb)})
  }
)