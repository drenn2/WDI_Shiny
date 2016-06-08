
# Packages
require(shiny)
require(stringi)
require(WDI)
require(countrycode)

# worldBankCache <- WDIcache()
# worldBankFields <- as.data.frame(worldBankCache$series)
# 
# View(worldBankFields)

# Define UI. Left panel with search terms and right panel with table, download link, and other features
source("chooser.R")

ui <- shinyUI(fluidPage(
  chooserInput("mychooser", "Available frobs", "Selected frobs",
               row.names(USArrests), c(), size = 10, multiple = TRUE
  ),
  verbatimTextOutput("selection")
))

# Define server logic required to draw a histogram
server <- shinyServer(function(input, output, session) {
  
  output$selection <- renderPrint(
    input$mychooser
  )
  
})

# Run the application 
shinyApp(ui = ui, server = server)

