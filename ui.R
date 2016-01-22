library(shiny)

shinyUI(fluidPage(
  titlePanel("Body Mass Index Calculator"),
  
  sidebarLayout(sidebarPanel(
    h5("Prepared by"), 
    h6("Shuhaida Mohamed Shuhidan"),
    h5("Features:"),
    h6("To Calculate BMI."),
    h5("How to Use:"),
    h6("1. Select units to be used."),
    h6("2. Enter your weight."),
    h6("3. Enter your height.")
    
    ),
    
    mainPanel(
      
      radioButtons(
        inputId  = "units",
        label    = "Units:",
        choices  = c("Metric (kg & m)" = 1, "Imperial (lb & in)" = 2),
        selected = 1
      ),
      
      numericInput(
        inputId = "mass",
        label = strong("Your weight:"),
        value = 70,
        min = 10,
        max = 250
        
      ),
      
      numericInput(
        inputId = "height",
        label = strong("Your height:"),
        value = 1.80,
        step  = 0.10,
        min = 0.2,
        max = 3.0
      ),
      h3("BMI Values:"),
      uiOutput("input"),
      uiOutput("result")

    
    ))
))