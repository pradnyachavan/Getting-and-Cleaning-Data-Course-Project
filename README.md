---
title: "Getting and Cleaning Data Project"
author: "pradnya chavan"
date: "November 16, 2015"
output: html_document
---



### Data source
The data is obtained from the accelerometers from the Samsung Galaxy S smartphone. This raw data is downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

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

## Running this code

* Download raw data from the above mentioned link
* Unzip the downloaded folder
* set up working directory as new unzipped folder
* Save this code in the working directory
* Run source(".\run_analysis.R")
* New text file namely "tidy_data.txt" will be generated in your working directory





