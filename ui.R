library(shiny) 
 shinyUI(fluidPage( 
     headerPanel("Greek Region Mean Population Data"), 
     sidebarLayout(position = "right", 
         sidebarPanel( 
             tabsetPanel(type = "tabs",  
                         tabPanel("Description", 
                                  h5('The main purpose of this visualization is to indicate the variance of population in each region before (2010) and after (2011) the consolidation of municipalities with the project Kallikratis') 
                                 ),         
                         tabPanel("License", 
                                  h5('Data Source:',a("Reference Link", href="http://www.opengov.gr")), 
                                                                             
                                  HTML('<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Άδεια Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />Το έργο <span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Greek Region Mean Population</span> διατίθεται υπό την <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Άδεια Creative Commons Αναφορά Δημιουργού 4.0 Διεθνές</a>.'), 
                                  br() 
                         )  
             )), 
         mainPanel( 
             htmlOutput("region") 
     )) 
         )) 
