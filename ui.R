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
                                    value = 15),
                        
                        # Instructions
                        h2("Instructions"),
                        p("This is a basic App based on data(cars) dataset in RStudio"),
                        p("1. Use slider to choose the input speed. On the right you
                                will get an average distance for that speed."),
                        p("About: Due to the time constraint this is as very basic app 
                                that demonstrates use of slider above. Move the slider and the
                                server will return a new plot on your right.")
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        plotOutput("speedHist")
                )
        ))