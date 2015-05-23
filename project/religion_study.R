#학력별 종교비율
rel_s_tmp <- rel[7:10, 5:7]
rel_s_tmp

rel_s = matrix(nrow = 4, ncol=3, byrow= TRUE)
for(i in 1:4){
  for(j in 1:3){
    rel_s[i, j] <- as.numeric(as.character(rel_s_tmp[i,j]))
  }
}
rel_s

py <- plotly()
trace1 <- list(
  x = c("elementry", "mid", "high", "college"), 
  y = c(rel_s[1, 1], rel_s[2, 1], rel_s[3, 1], rel_s[4, 1]), 
  name = "Buddhism", 
  type = "bar"
)
trace2 <- list(
  x = c("elementry", "mid", "high", "college"), 
  y = c(rel_s[1, 2], rel_s[2, 2], rel_s[3, 2], rel_s[4, 2]), 
  name = "Protestantism", 
  type = "bar"
)
trace3 <- list(
  x = c("elementry", "mid", "high", "college"), 
  y = c(rel_s[1, 3], rel_s[2, 3], rel_s[3, 3], rel_s[4, 3]), 
  name = "Catholic", 
  type = "bar"
)
data <- list(trace1, trace2, trace3)
layout <- list(barmode = "group")
response <- py$plotly(data, kwargs=list(layout=layout, filename="rel_sAREER", fileopt="overwrite"))
url <- response$url
