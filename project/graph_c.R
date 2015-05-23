#https://plot.ly/~DemoAccount/273/_1929-30-40-50-6069/

install.packages("devtools")
library("devtools")
install_github("ropensci/plotly")
devtools::install_github("ropensci/plotly")
library(plotly)
set_credentials_file("Ggoggo", "caldesoufj")

#source check
demo_r_will_c
avr_vr_c
vi_c

py <- plotly()
trace1 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_c[1, 1], avr_vr_c[1, 1], vi_refine_c[1, 1]), 
  name = "prof_manage", 
  type = "bar"
)
trace2 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_c[2, 1], avr_vr_c[2, 1], vi_refine_c[2, 1]), 
  name = "office", 
  type = "bar"
)
trace3 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_c[3, 1], avr_vr_c[3, 1], vi_refine_c[3, 1]), 
  name = "service", 
  type = "bar"
)
trace4 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_c[4, 1], avr_vr_c[4, 1], vi_refine_c[4, 1]), 
  name = "agri", 
  type = "bar"
)
trace5 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_c[5, 1], avr_vr_c[5, 1], vi_refine_c[5, 1]), 
  name = "tech", 
  type = "bar"
)
data <- list(trace1, trace2, trace3, trace4, trace5)
layout <- list(barmode = "group")
response <- py$plotly(data, kwargs=list(layout=layout, filename="CAREER", fileopt="overwrite"))
url <- response$url
