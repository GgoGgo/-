#https://plot.ly/~DemoAccount/273/_1929-30-40-50-6069/

install.packages("devtools")
library("devtools")
install_github("ropensci/plotly")
devtools::install_github("ropensci/plotly")
library(plotly)
set_credentials_file("Ggoggo", "caldesoufj")

#source check
demo_r_will_s
avr_vr_s
vi_s

py <- plotly()
trace1 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_s[1, 1], avr_vr_s[1, 1], vi_refine_s[1, 1]), 
  name = "elementry", 
  type = "bar"
)
trace2 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_s[2, 1], avr_vr_s[2, 1], vi_refine_s[2, 1]), 
  name = "mid", 
  type = "bar"
)
trace3 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_s[3, 1], avr_vr_s[3, 1], vi_refine_s[3, 1]), 
  name = "high", 
  type = "bar"
)
trace4 <- list(
  x = c("DemoRate", "VoteRate", "VoteImp"), 
  y = c(demo_r_will_s[4, 1], avr_vr_s[4, 1], vi_refine_s[4, 1]), 
  name = "college", 
  type = "bar"
)
data <- list(trace1, trace2, trace3, trace4)
layout <- list(barmode = "group")
response <- py$plotly(data, kwargs=list(layout=layout, filename="STUDY", fileopt="overwrite"))
url <- response$url
