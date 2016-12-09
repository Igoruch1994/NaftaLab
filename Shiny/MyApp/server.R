library(shiny)

shinyServer(function(input, output) {
  output$diagonalone<-renderPrint({
    paste0('a(1.1)*a(2.2)*a(3.3) = ',input$a11*input$a22*input$a33)
  })
  output$firsttriangle<-renderPrint({
    paste0('a(1.2)*a(2.3)*a(3.1) = ',input$a12*input$a23*input$a31)
  })
  output$secondtriangle<-renderPrint({
    paste0('a(3.3)*a(2.1)*a(3.2) = ',input$a33*input$a21*input$a32)
  })
  output$diagonaltwo<-renderPrint({
    paste0('a(1.3)*a(2.2)*a(3.1) = ',input$a13*input$a22*input$a31)
  })
  output$thirdtriangle<-renderPrint({
    paste0('a(1.2)*a(2.1)*a(3.3) = ',input$a12*input$a21*input$a33)
  })
  output$fourtriangle<-renderPrint({
    paste0('a(1.1)*a(2.3)*a(3.2) = ',input$a11*input$a23*input$a32)
  })
  output$functio<-renderPrint({
    'a(1.1)*a(2.2)*a(3.3)+a(1.2)*a(2.3)*a(3.1)+a(3.3)*a(2.1)*a(3.2)-a(1.3)*a(2.2)*a(3.1)-a(1.2)*a(2.1)*a(3.3)-a(1.1)*a(2.3)*a(3.2)'
  })

  output$viznachnik<-renderPrint({
    paste0('Визначник : ',input$a11*input$a22*input$a33+input$a12*input$a23*input$a31+input$a33*input$a21*input$a32-input$a13*input$a22*input$a31-input$a12*input$a21*input$a33-input$a11*input$a23*input$a32)
  })
  output$graph <- renderPlot({
    xVizn <- input$a11*input$a22*input$a33+input$a12*input$a23*input$a31+input$a33*input$a21*input$a32-input$a13*input$a22*input$a31-input$a12*input$a21*input$a33-input$a11*input$a23*input$a32
    x1<-xVizn-10
    x2<- xVizn+10
    x<-x1:x2
      y <- x
      plot(x, y,type = "l")
      grid()
    
  })
})