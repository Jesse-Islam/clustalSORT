library(readr)
name<-"251119 - SNP 2.csv"
seqResults <- read_csv(name,col_names=FALSE)
seqResults$labels <- as.numeric(sub("-.*$","", seqResults$X1))

seqSorted<-seqResults[order(seqResults$labels),]
write.csv(seqSorted$X1, file = paste("SORTED",name,sep=""),row.names = FALSE,col.names = FALSE)
