source("chooser.R")
# worldBankFields <- readRDS("worldBankFields.rds")

shinyUI(fluidPage(
  chooserInput("mychooser", "Available frobs", "Selected frobs",
    worldBankFields$shortName[1:50], c(), size = 50, multiple = TRUE
  ),
  verbatimTextOutput("selection")
))