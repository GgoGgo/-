setwd("c:\\R_Source\\proj")

Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_40') 
library(rJava)

#demostration rate
de <- read.csv("csv/시위참여.csv")[,3:6]
#vote rate
vr_1 <- read.csv("csv/대통령투표율.csv")[,3:4]
vr_2 <- read.csv("csv/국회의원투표율.csv")[,3:4]
#vote importance
vimp <- read.csv("csv/투표참여중요도.csv")[,3:10]
#religion
rel <- read.csv("csv/종교.csv")
