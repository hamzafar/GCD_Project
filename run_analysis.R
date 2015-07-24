
setwd("E:/Hamza/Coursera/Getting and Cleaning Data/project/UCI HAR Dataset")

x_train <- read.table("train\\X_train.txt")
y_train <- read.table("train\\Y_train.txt")
subject_train <- read.table("train\\subject_train.txt")

x_test <- read.table("test\\X_test.txt")
y_test <- read.table("test\\y_test.txt")
subject_test <- read.table("test\\subject_test.txt")

datComb <- cbind(rbind(x_train,x_test),sub=0,lab=0)
datComb$lab <- rbind(y_train,y_test)
datComb$sub <- rbind(subject_train,subject_test)

features <- read.table("features.txt",stringsAsFactors = FALSE) 

idxM <- grep("mean",features$V2) 
idxS <- grep("std",features$V2)

idx <- sort(c(idxM,idxS))
dataMS <- cbind(datComb[idx], subj = 0, label_ = 0)
# dataMS$subj <- datComb$sub
dataMS$subj <- as.vector(as.matrix(datComb$sub))
# dataMS$label_ <- datComb$lab
dataMS$label_ <- as.vector(as.matrix(datComb$lab))

activity_label <- read.table("activity_labels.txt",
                             col.names = c("label_","activity"))
library(plyr)

dataActivity <- join(dataMS,activity_label, type = "inner")

varNam <- c(features[idx,2], 'subj','label_','activity')
colnames(dataActivity) <- varNam
dataActivity$label_ <- NULL

tidyData <- aggregate(.~ activity + subj, data = dataActivity, FUN =  mean)

tidyData
