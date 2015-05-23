#직업별 종교비율
rel_c_tmp <- rel[29:33, 5:7]
rel_c_tmp

rel_c = matrix(nrow = 5, ncol=3, byrow= TRUE)
for(i in 1:5){
  for(j in 1:3){
    rel_c[i, j] <- as.numeric(as.character(rel_c_tmp[i,j]))
  }
}
rel_c

py <- plotly()
trace1 <- list(
  x = c("prof_manage", "office", "service", "gri", "tech"), 
  y = c(rel_c[1, 1], rel_c[2, 1], rel_c[3, 1], rel_c[4, 1], rel_c[5, 1]), 
  name = "Buddhism", 
  type = "bar"
)
trace2 <- list(
  x = c("prof_manage", "office", "service", "gri", "tech"), 
  y = c(rel_c[1, 2], rel_c[2, 2], rel_c[3, 2], rel_c[4, 2], rel_c[5, 2]), 
  name = "Protestantism", 
  type = "bar"
)
trace3 <- list(
  x = c("prof_manage", "office", "service", "gri", "tech"), 
  y = c(rel_c[1, 3], rel_c[2, 3], rel_c[3, 3], rel_c[4, 3], rel_c[5, 3]), 
  name = "Catholic", 
  type = "bar"
)
data <- list(trace1, trace2, trace3)
layout <- list(barmode = "group")
response <- py$plotly(data, kwargs=list(layout=layout, filename="REL_CAREER", fileopt="overwrite"))
url <- response$url
