library(shiny)
library(ggplot2)

# DATA
spruce.df <- read.csv("../SPRUCE.csv")

# Define UI for application that draws a plot
ui <- fluidPage(
  
  # INPUTS
  inputPanel(
    selectInput("plotg", "Choose plot type",
                choices = list(
                  "Points" = "g",
                  "Linear Regression" = "glinearreg",
                  "Line Segments" = "glinesegments"
                )
    )
  ),
  
  # OUTPUTS
  plotOutput("plot")
)

# Define server logic required to draw the plot
server <- function(input, output) {
  
  output$plot <- renderPlot({
    
    g <- ggplot(spruce.df, aes(x = BHDiameter, y = Height)) + geom_point()
    glr <- g + geom_line()
    gls <- g + geom_smooth(method = "lm")
    
    if (input$plotg == "g") {
      g
    } else if (input$plotg == "glinesegments") {
      glr
    } else if (input$plotg == "glinearreg") {
      gls
    }
    
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
