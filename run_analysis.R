#Loading and cleaning feature table
features <- read.table("./features.txt", header=FALSE, stringsAsFactors=FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])
features2 <- make.names(features[,"V2"])

#Loading and renaming x, y and subject training table
x_train <- read.table("./train/X_train.txt", header = FALSE)
names(x_train) = features2  #renaming 561 features

y_train <- read.table("./train/y_train.txt", header = FALSE)
names(y_train)[1]<-"activity_id" #renaming activity column

subject_train <- read.table("./train/subject_train.txt", header = FALSE)
names(subject_train) = "subject" #renaming subject column

#Final training dataset
train<- cbind(y_train, subject_train,x_train )  

#Loading and renaming x, y and subject testing table
x_test <- read.table("./test/X_test.txt", header = FALSE)
names(x_test) = features2  #renaming 561 features

y_test <- read.table("./test/y_test.txt", header = FALSE)
names(y_test)[1]<-"activity_id" #renaming activity column

subject_test <- read.table("./test/subject_test.txt", header = FALSE)
names(subject_test) = "subject" #renaming subject column

#final test dataset
test<- cbind( y_test, subject_test,x_test)  


#Merging testing and training dataset
mergedata<-rbind(train,test)


#Selecting features with mean and std
feature_req<-subset(features,grepl(".*Mean.*|.*Std.*",features$V2))
feature_req <- make.names(feature_req[,"V2"])

#adding new values to selected feature sequence
feature_req<-c(feature_req,"activity_id","subject")


#Keeping only selected features
mergedata_req<-mergedata[feature_req] #Extracts only the measurements on the mean and 
                                      #standard deviation for each measurement. 


#Loading and renaming activity_label dataset
activity_labels <- read.table("./activity_labels.txt", header=FALSE)
names(activity_labels)[1]<-"activity_id"
names(activity_labels)[2]<-"activity_desc"

#Merging activity_label with selected features dataset
mergedata_lab<-merge(mergedata_req,activity_labels,by="activity_id")


#Calculating average of each variable for each activity and each subject to create new tidy dataset.
agg_merge = aggregate(mergedata_lab,
                      by=list(activity=mergedata_lab$activity_desc, subject=mergedata_lab$subject),
                      mean)

#Dropping unwanted variable
tidy_data<-agg_merge[c(-90,-91)]


#Writing final tidy dataset into a text file
write.table(tidy_data, "./tidy_data.txt", row.name=FALSE, sep="\t")
