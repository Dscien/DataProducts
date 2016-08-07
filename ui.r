library("shiny")
#https://dscien.shinyapps.io/Shiny/
shinyUI(  pageWithSidebar(
    headerPanel("Range Finder"),
  sidebarPanel( 
    
    p("Documentation: This application will calculate the range of a projectile launched at the velocity and angle specified by the user.  The calculations assume the same launch and landing height, normal earth gravity, and ignores air resitance"),
    numericInput('veloc','Velocity (0-300000 meters per second)',0,min=0,max=300000,step=1),
    numericInput('angle','Angle (0-90 degrees)',0,min=0,max=90,step=1)
   
    
),
  
mainPanel(
  h3('Range of projectile: '),
  verbatimTextOutput("range")
)
  
))
