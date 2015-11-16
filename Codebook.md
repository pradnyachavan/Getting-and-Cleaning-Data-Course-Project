---
title: "CodeBook for the tidy dataset - Getting and Cleaning Data Project"
author: "pradnya chavan"
date: "November 16, 2015"
output: html_document
---

### Goal
The Goal of the project is to create clean and tidy data set from the given dispersed dataset. This goal is acheived by exploring data in different tables, cleansing it and putting it together for better understanding in future data analysis

### Data source
The data is obtained from the accelerometers from the Samsung Galaxy S smartphone. This raw data is downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## Raw datasets
Following text files are part of this dataset

* Train: X_train.txt,y_train.txt, subject_train.txt
* Test: X_test.txt, y_test.txt, subject_test.txt
* features.txt
* activity_labels.txt


## Data in raw datasets

* X_train and X_test dataset contains mean, std_dev, min ,max, etc. of  accelerometer and gyroscope 3-axial raw signals
* y_train and y_test dataset contains  actvity ids
* subject_train and subject_test contains subject_ids for each observation  in x_train and x_test.
* features dataset contain varaible names of the x_train and x_test dataset
* activity_labels dataset contain activity_ids and their description (walking,standing, etc.)

## Variables and dataypes in the final dataset

* activity "factor"
* tBodyAccMeanX "numeric"
* tBodyAccStdX "numeric"
* tGravityAccMeanX "numeric"
* tGravityAccStdX "numeric"
* tBodyAccJerkMeanX "numeric"
* tBodyAccJerkStdX "numeric"
* tBodyGyroMeanX "numeric"
* tBodyGyroStdX "numeric"
* tBodyGyroJerkMeanX "numeric"
* tBodyGyroJerkStdX "numeric"
* tBodyAccMagMean "numeric"
* tGravityAccMagStd "numeric"
* tBodyGyroMagMean "numeric"
* tBodyGyroJerkMagStd "numeric"
* fBodyAccMeanZ "numeric"
* fBodyAccStdZ "numeric"
* fBodyAccMeanFreqZ "numeric"
* fBodyAccJerkMeanZ "numeric"
* fBodyAccJerkStdZ "numeric"
* fBodyAccJerkMeanFreqZ "numeric"
* fBodyGyroMeanZ "numeric"
* fBodyGyroStdZ "numeric"
* fBodyGyroMeanFreqZ "numeric"
* fBodyAccMagMeanFreq "numeric"
* fBodyBodyAccJerkMagMeanFreq "numeric"
* fBodyBodyGyroMagMeanFreq "numeric"
* fBodyBodyGyroJerkMagMeanFreq "numeric"
* angletBodyGyroMean.gravityMean "numeric"
* angleY.gravityMean "numeric"
* subject "integer"
* tBodyAccMeanY "numeric"
* tBodyAccStdY "numeric"
* tGravityAccMeanY "numeric"
* tGravityAccStdY "numeric"
* tBodyAccJerkMeanY "numeric"
* tBodyAccJerkStdY "numeric"
* tBodyGyroMeanY "numeric"
* tBodyGyroStdY "numeric"
* tBodyGyroJerkMeanY "numeric"
* tBodyGyroJerkStdY "numeric"
* tBodyAccMagStd "numeric"
* tBodyAccJerkMagMean "numeric"
* tBodyGyroMagStd "numeric"
* fBodyAccMeanX "numeric"
* fBodyAccStdX "numeric"
* fBodyAccMeanFreqX "numeric"
* fBodyAccJerkMeanX "numeric"
* fBodyAccJerkStdX "numeric"
* fBodyAccJerkMeanFreqX "numeric"
* fBodyGyroMeanX "numeric"
* fBodyGyroStdX "numeric"
* fBodyGyroMeanFreqX "numeric"
* fBodyAccMagMean "numeric"
* fBodyBodyAccJerkMagMean "numeric"
* fBodyBodyGyroMagMean "numeric"
* fBodyBodyGyroJerkMagMean "numeric"
* angletBodyAccMean.gravity "numeric"
* angletBodyGyroJerkMean.gravityMean "numeric"
* angleZ.gravityMean "numeric"
* activity_id "numeric"
* tBodyAccMeanZ "numeric"
* tBodyAccStdZ "numeric"
* tGravityAccMeanZ "numeric"
* tGravityAccStdZ "numeric"
* tBodyAccJerkMeanZ "numeric"
* tBodyAccJerkStdZ "numeric"
* tBodyGyroMeanZ "numeric"
* tBodyGyroStdZ "numeric"
* tBodyGyroJerkMeanZ "numeric"
* tBodyGyroJerkStdZ "numeric"
* tGravityAccMagMean "numeric"
* tBodyAccJerkMagStd "numeric"
* tBodyGyroJerkMagMean "numeric"
* fBodyAccMeanY "numeric"
* fBodyAccStdY "numeric"
* fBodyAccMeanFreqY "numeric"
* fBodyAccJerkMeanY "numeric"
* fBodyAccJerkStdY "numeric"
* fBodyAccJerkMeanFreqY "numeric"
* fBodyGyroMeanY "numeric"
* fBodyGyroStdY "numeric"
* fBodyGyroMeanFreqY "numeric"
* fBodyAccMagStd "numeric"
* fBodyBodyAccJerkMagStd "numeric"
* fBodyBodyGyroMagStd "numeric"
* fBodyBodyGyroJerkMagStd "numeric"
* angletBodyAccJerkMean.gravityMean "numeric"
* angleX.gravityMean "numeric"


































































































