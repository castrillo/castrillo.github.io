#server.R

library(shiny)
require(rCharts)
options(RCHART_WIDTH = 800)


shinyServer(function(input, output) {
    output$chart2 <- renderChart({
      graphData <- studentCountryCity[which(studentCountryCity$homeCountry == input$homeCountry),]
      
      #Initialize plot
      p1 <- rPlot(x = "homeCity", y = "studentsCity", data = graphData, type = 'bar')
      p1$addParams(dom = 'chart2')
      return(p1)
    })
    
})

