shinyUI(pageWithSidebar(headerPanel("My Body Mass Index Calculator"), 
                        sidebarPanel(
                            h2("Usage"),
                            p("Enter your Weight (lb), Height (in) and click on 
                              'Calculate!' button to get your BMI index. 
                              In order to use metric system (meters instead of 
                              inches, kg instead of lb) check 'Metric system' 
                              checkbox."), 
                            h2("Categories"),
                            p("BMI under 18.5: Underweight"),
                            p("BMI between 18.5 and 25: Normal"),
                            p("BMI over 25: Overweight")
                            ), 
                        mainPanel(
                            numericInput("weight", "Weight", 0, 1, 300, 1),
                            numericInput("height", "Height", 0, 1, 2.50, 0.01),
                            checkboxInput("metric", "Metric system"), 
                            actionButton("calculate", "Calculate!"), 
                            h3("Result"),
                            verbatimTextOutput("oresult")
                            )))
