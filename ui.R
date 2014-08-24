#ui.R file
library(shiny)
require(rCharts)
options(RCHART_LIB = 'polycharts')


# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("TSF Analytics"),
  titlePanel("Students by Country"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "homeCountry",
                  label = "Select Country",
                  choices = sort(unique(studentCountryCity$homeCountry)),
                  selected = "Kenya")
      ),
    
    # Show a plot of the generated distribution
    mainPanel(
     showOutput("chart2", "polycharts")
    )
  )
))
