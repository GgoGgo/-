#학력별 시위참여율
demo_r_s <- de[25:28, 1:4]
demo_r_will_s <- matrix(nrow = 4, ncol = 1, byrow = TRUE)
for(i in 1:4){
  demo_r_will_s[i, 1] = as.numeric(as.character(demo_r_s[i, 1]))+as.numeric(as.character(demo_r_s[i, 2]))+as.numeric(as.character(demo_r_s[i, 3]))
}
demo_r_will_s
#학력별 투표율
pre_vr_s <- vr_1[25:28, 1:2]
con_vr_s <- vr_2[25:28, 1:2]
avr_vr_s <- matrix(nrow = 4, ncol = 2, byrow= TRUE)
for( i in 1:4){
  for( j in 1:2){
    avr_vr_s[i,j] <- (as.numeric(as.character(pre_vr_s[i, j]))+as.numeric(as.character(con_vr_s[i, j])))/2;
  }
}
avr_vr_s
#학력별 투표참여 중요도 
vi_s <- vimp[25:28, 8]
vi_refine_s <- matrix(nrow = 4, ncol = 1, byrow = TRUE)
for( i in 1:4){
  vi_refine_s[i, 1] <- as.numeric(as.character(vi_s[i]))*100/7;
}
vi_refine_s
