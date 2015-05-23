#나이별 종교비율
rel_a_tmp <- rel[11:21, 5:7]

rel_a = matrix(nrow = 11, ncol=3, byrow= TRUE)
for(i in 1:11){
  for(j in 1:3){
    rel_a[i, j] <- as.numeric(as.character(rel_a_tmp[i,j]))
  }
}

py <- plotly()
trace1 <- list(
  x = c("15-19", "20-24", "25,29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65-"), 
  y = c(rel_a[1, 1], rel_a[2, 1], rel_a[3, 1], rel_a[4, 1], rel_a[5, 1], rel_a[6, 1], rel_a[7, 1], rel_a[8, 1], rel_a[9, 1], rel_a[10, 1], rel_a[11, 1]), 
  name = "Buddhism", 
  type = "bar"
)
trace2 <- list(
  x = c("15-19", "20-24", "25,29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65-"), 
  y = c(rel_a[1, 2], rel_a[2, 2], rel_a[3, 2], rel_a[4, 2], rel_a[5, 2], rel_a[6, 2], rel_a[7, 2], rel_a[8, 2], rel_a[9, 2], rel_a[10, 2], rel_a[11, 2]), 
  name = "Protestantism", 
  type = "bar"
)
trace3 <- list(
  x = c("15-19", "20-24", "25,29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65-"), 
  y = c(rel_a[1, 3], rel_a[2, 3], rel_a[3, 3], rel_a[4, 3], rel_a[5, 3], rel_a[6, 3], rel_a[7, 3], rel_a[8, 3], rel_a[9, 3], rel_a[10, 3], rel_a[11, 3]), 
  name = "Catholic", 
  type = "bar"
)
data <- list(trace1, trace2, trace3)
layout <- list(barmode = "group")
response <- py$plotly(data, kwargs=list(layout=layout, filename="REL_AGE", fileopt="overwrite"))
url <- response$url
