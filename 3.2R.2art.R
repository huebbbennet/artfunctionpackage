


# packages ----------------------------------------------------------------------

install.packages("ggplot2")
install.packages("tidyverse")
install.packages("gganimate")
install.packages("gifski")
install.packages("png")



# moving art -------------------------------------------------------------------

my_moving_art <- function(x = 42){
  

  library(gganimate)
  library(tidyverse)
  library(ggplot2)
  library(gifski)
  library(png)
  
  set.seed(x)
  
    df = data.frame(A = sample(1:100, 40),
                       B=sample(1:100, 40),
                       C=sample(1:125, 40), 
                       D= sample(1:200, 40),
                       E= sample(1:200, 40), 
                       G=sample(1:200, 40), 
                       H=sample(1:200, 40),
                       I=sample(1:200, 40)) 
      return(ggplot(df, aes(A)) +
         geom_point(aes(y = B), color = "black", size = 10, shape = 0) +
         geom_point(aes(y = C), color = "red", size = 10, shape = 0) +
         geom_point(aes(y = D), color = "green", size = 10, shape = 0) +
         geom_point(aes(y = E), color = "blue", size = 10, shape = 0) +
         geom_point(aes(y = G), color = "purple", size = 10, shape = 0)+
         geom_point(aes(y = H), color = "orange", size = 10, shape = 0)+
         theme_void()+
         labs(y= "", x = "")+
         scale_x_continuous(breaks = NULL)+
         scale_y_continuous(breaks = NULL)+
           coord_polar()+
           transition_states(A)+
           shadow_wake(wake_length = 0.5)
       )
}


my_moving_art()


# static art -------------------------------------------------------------------
  
  
my_static_art <- function(x = 42){
  

  library(gganimate)
  library(tidyverse)
  library(ggplot2)
  library(gifski)
  library(png)
 
   set.seed(x)
  
  df = data.frame(A = sample(1:100, 40),
                  B=sample(1:100, 40),
                  C=sample(1:125, 40), 
                  D= sample(1:200, 40),
                  E= sample(1:200, 40), 
                  G=sample(1:200, 40), 
                  H=sample(1:200, 40),
                  I=sample(1:200, 40)) 
  return(ggplot(df, aes(A)) +
           geom_point(aes(y = B), color = "black", size = 10, shape = 0) +
           geom_point(aes(y = C), color = "red", size = 10, shape = 0) +
           geom_point(aes(y = D), color = "green", size = 10, shape = 0) +
           geom_point(aes(y = E), color = "blue", size = 10, shape = 0) +
           geom_point(aes(y = G), color = "purple", size = 10, shape = 0)+
           geom_point(aes(y = H), color = "orange", size = 10, shape = 0)+
           theme_void()+
           labs(y= "", x = "")+
           scale_x_continuous(breaks = NULL)+
           scale_y_continuous(breaks = NULL)+
           coord_polar()
  )
}


my_static_art()


