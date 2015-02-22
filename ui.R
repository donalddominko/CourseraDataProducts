        # Author        : Donald Dominko
        # About         : Coursera Developing Data Products
        # App is (should be) accessible at the address bellow
        # http://donalddominko.shinyapps.io/CourseraDataProducts        

        library(shiny)
                
        # Define UI for application that plots random distributions 
        shinyUI(pageWithSidebar(
                
                # Application title
                headerPanel("Demo for 'cars' dataset!"),
                
                # Sidebar with a slider input for number of observations
                sidebarPanel(
                        sliderInput("speed", 
                                    "Select the car speed:", 
                                    min = 4,
                                    max = 25, 
                                    value = 15)
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        plotOutput("speedHist")
                )
        ))