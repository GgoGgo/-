#https://plot.ly/~DemoAccount/273/_1929-30-40-50-6069/

install.packages("devtools")
library("devtools")
install_github("ropensci/plotly")
devtools::install_github("ropensci/plotly")
library(plotly)
set_credentials_file("Ggoggo", "caldesoufj")

#source check
demo_r_will
avr_vr
vi

py <- plotly()
trace1 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will[1, 1], avr_vr[1, 1], vi_refine[1, 1]), 
  name = "19~29", 
  type = "bar"
)
trace2 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will[2, 1], avr_vr[2, 1], vi_refine[2, 1]), 
  name = "30", 
  type = "bar"
)
trace3 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will[3, 1], avr_vr[3, 1], vi_refine[3, 1]), 
  name = "40", 
  type = "bar"
)
trace4 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will[4, 1], avr_vr[4, 1], vi_refine[4, 1]), 
  name = "50", 
  type = "bar"
)
trace5 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will[5, 1], avr_vr[5, 1], vi_refine[5, 1]), 
  name = "60~69", 
  type = "bar"
)
data <- list(trace1, trace2, trace3, trace4, trace5)
layout <- list(barmode = "group")
response <- py$plotly(data, kwargs=list(layout=layout, filename="AGE", fileopt="overwrite"))
url <- response$url
