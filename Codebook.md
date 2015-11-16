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

## Data cleaning strategy

* Loading data
* Cleaning variable names
* Transforming values into variables names
* Feature selection
* Merging training and testing dataset

## Data processing steps

* Loaded data using read.table function
* We used regular expression to get rid of unnnecessary content in future variable names
* Created new variable by creating sequences
* Selected only those variables which contain string "mean" or "std"
* Renamed columns of x_train and x_test by sequenced variable set.
* Renamed columns of Y_train, y_test, subject_train,subject_test and activity_labels for better understanding
* Merged all the transformed dataset using cbind, rbind and merge function
* Calculated average of each variable for each activity and each subject to create new tidy dataset.
* Wrote this new tidy dataset into a new text file.





