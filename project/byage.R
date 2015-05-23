#연령별 시위참여율
demo_r <- de[7:11, 1:4]
demo_r_will <- matrix(nrow = 5, ncol = 1, byrow = TRUE)
for(i in 1:5){
  demo_r_will[i, 1] = as.numeric(as.character(demo_r[i, 1]))+as.numeric(as.character(demo_r[i, 2]))+as.numeric(as.character(demo_r[i, 3]))
}
#연령별 투표율
pre_vr <- vr_1[7:11, 1:2]
con_vr <- vr_2[7:11, 1:2]
avr_vr <- matrix(nrow = 5, ncol = 2, byrow= TRUE)
for( i in 7:11){
  for( j in 1:2){
    avr_vr[i-6,j] <- (as.numeric(as.character(pre_vr[i-6, j]))+as.numeric(as.character(con_vr[i-6, j])))/2;
  }
}
#연령별 투표참여 중요도 
vi <- vimp[7:11, 8]
vi_refine <- matrix(nrow = 5, ncol = 1, byrow = TRUE)
for( i in 1:5){
  vi_refine[i, 1] <- as.numeric(as.character(vi[i]))*100/7;
}
vi_refine
