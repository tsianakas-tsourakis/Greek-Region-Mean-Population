 library(googleVis)

 library(shiny)

# import data
 data=read.csv2("populdata.csv", header = FALSE) 

 col_names<-c("Population","Year","Perifereia")

# rename columns
 colnames(data)<-col_names

# display data
 data

   Population Year                 Perifereia
1       11110 2010 AN. MAKEDONIAS kai THRAKIS
2       13970 2010       KENTRIKIS MAKEDONIAS
3        4863 2010         DYTIKIS MAKEDONIAS
4        4656 2010                    HPEIROU
5        7180 2010                 THESSALIAS
6        5461 2010               IONIWN NHSWN
7       10007 2010            DYTIKIS ELLADAS
8        6372 2010            STEREAS ELLADAS
9       30835 2010                    ATTIKIS
10       5971 2010               PELOPONNHSOU
11       5726 2010            BOREIOU AIGAIOU
12       5219 2010             NOTIOU AIGAIOU
13       8349 2010                     KRHTHS
14      27776 2011 AN. MAKEDONIAS kai THRAKIS
15      49262 2011       KENTRIKIS MAKEDONIAS
16      25127 2011         DYTIKIS MAKEDONIAS
17      19657 2011                    HPEIROU
18      30156 2011                 THESSALIAS
19      30426 2011               IONIWN NHSWN
20      38974 2011            DYTIKIS ELLADAS
21      24213 2011            STEREAS ELLADAS
22      56997 2011                    ATTIKIS
23      24575 2011               PELOPONNHSOU
24      22902 2011            BOREIOU AIGAIOU
25       8903 2011             NOTIOU AIGAIOU
26      25047 2011                     KRHTHS


 Motion=gvisMotionChart(data,idvar="Perifereia",timevar="Year",options=list(state='{"colorOption":"_UNIQUE_COLOR","showTrails":false};'))

 plot(Motion)

shinyServer( 
    function(input, output) { 
        output$Perifereia <- renderGvis({Motion})   
     } 
 )
