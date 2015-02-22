        # Author        : Donald Dominko
        # About         : Coursera Developing Data Products
        # App is (should be) accessible at the address bellow
        # http://donalddominko.shinyapps.io/CourseraDataProducts

        library(shiny)
        data(cars)
        
        # Start shiny server
        shinyServer(
                function(input, output) {
                        
                        # Reactive output with renderPlot
                        output$speedHist = renderPlot({
                                
                                # Reading the speed parameter from slider (reactive)
                                speed = input$speed
                                #speed = 15
                                # Ploting all the data
                                plot(cars$speed, cars$dist, 
                                     xlab="Speed", 
                                     ylab="Distance",                                     
                                     col="lightblue",
                                     main="Plot for 'cars' dataset",
                                     pch=19)
                                text(10, 110, paste("          Speed : ", speed))
                                text(10, 100, paste("Distance (mean) : ", 
                                                    round(mean(cars$dist[cars$speed == speed]))
                                                   ))
                                                                                                
                                # Lowess line (x,y)
                                lines(lowess(cars$speed, cars$dist), col="blue") 
                                
                                # Line that changes acording to speed slider
                                lines(c(speed,speed), c(0, 150),col="red",lwd=5)
                        })
                }
        )
