library(shiny)

ui <- fluidPage(
  "Histograma da variável mpg",
  selectInput(
    inputId = "variavel",
    label = "Selecione uma variável",
    choices = names(mtcars)
  ),
  plotOutput(outputId = "histograma")
)

server <- function(input, output, session) {
  
  output$histograma <- renderPlot({
    hist(mtcars[[input$variavel]])
  })
  
}

shinyApp(ui, server)