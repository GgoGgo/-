#직업별 시위참여율
demo_r_c <- de[12:16, 1:4]
demo_r_c
demo_r_will_c <- matrix(nrow = 5, ncol = 1, byrow = TRUE)
for(i in 1:5){
  demo_r_will_c[i, 1] = as.numeric(as.character(demo_r_c[i, 1]))+as.numeric(as.character(demo_r_c[i, 2]))+as.numeric(as.character(demo_r_c[i, 3]))
}
demo_r_will_c
#직업별 투표율
pre_vr_c <- vr_1[12:16, 1:2]
con_vr_c <- vr_2[12:16, 1:2]
avr_vr_c <- matrix(nrow = 5, ncol = 2, byrow= TRUE)
for( i in 1:5){
  for( j in 1:2){
    avr_vr_c[i,j] <- (as.numeric(as.character(pre_vr_c[i, j]))+as.numeric(as.character(con_vr_c[i, j])))/2;
  }
}
#직업별 투표참여 중요도 
vi_c <- vimp[12:16, 8]
vi_refine_c <- matrix(nrow = 5, ncol = 1, byrow = TRUE)
for( i in 1:5){
  vi_refine_c[i, 1] <- as.numeric(as.character(vi_c[i]))*100/7;
}
vi_refine_c
