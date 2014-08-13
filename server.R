shinyServer(function(input, output){
    output$oresult <- renderPrint({
        input$calculate
        isolate(
        if (input$metric){
            coef <- 1
        } else {
            coef <- 703
        })
        isolate(input$weight/(input$height^2)*coef)
        })
    }) 
