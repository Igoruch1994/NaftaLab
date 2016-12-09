library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Обчислення визначника матриці 3*3 та побудова графіка y=Визначник"),
  sidebarPanel(
    h3('Введіть коефіцієнти матриці'),
    numericInput("a11", label = h5("a(1.1)"), value = 0,width = '200px'),
    numericInput("a12", label = h5("a(1.2)"), value = 0,width = '200px'),
    numericInput("a13", label = h5("a(1.3)"), value = 0,width = '200px'),
    numericInput("a21", label = h5("a(2.1)"), value = 0,width = '200px'),
    numericInput("a22", label = h5("a(2.2)"), value = 0,width = '200px'),
    numericInput("a23", label = h5("a(2.3)"), value = 0,width = '200px'),
    numericInput("a31", label = h5("a(3.1)"), value = 0,width = '200px'),
    numericInput("a32", label = h5("a(3.2)"), value = 0,width = '200px'),
    numericInput("a33", label = h5("a(3.3)"), value = 0,width = '200px'),
    submitButton('Порахувати визначник')
  ),
  mainPanel(
    h3('Проміжні обрахунки'),
    textOutput("diagonalone"),
    textOutput("firsttriangle"),
    textOutput("secondtriangle"),
    textOutput("diagonaltwo"),
    textOutput("thirdtriangle"),
    textOutput("fourtriangle"),
    h3('Формула : '),
    textOutput("functio"),
    h3('Обраховуємо визначник'),
    verbatimTextOutput("viznachnik"),
    h3('Побудова графіка y=Визначник'),
    plotOutput('graph')
    
    )))
