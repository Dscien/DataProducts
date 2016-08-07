

shinyServer(
  function(input,output){
    
    
    dist <- reactive({
      radians <- input$angle * pi / 180
      r <- ((input$veloc ^2 )/9.8) * sin( 2* radians)
      y0<-input$veloc * sin(radians)
      
      return(r)
    })
    
    
    #vert <-reactive({
    # radians <- input$angle * pi / 180
    #  y0<-input$veloc * sin(radians)
    #  return (y0)
    #})
    
   # ((input$veloc ^2 )/9.8) * sin( 2* (input$angle * pi / 180))
    
    
    output$range <- renderPrint({ dist()   })
    
    
    
    
    output$plot <- renderPlot({
      hist(c(1,1,2,3))
      
      
    })
    
  }
)