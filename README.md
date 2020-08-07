# Getting-and-Cleaning-Data-Course-Project
## Introduction
This is the final course project of the "Getting and Cleaning Data" course from the Data Science Specialization by Johns Hopkins University in Coursera. The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set.

The raw data provided is collected from the accelerometers from the Samsung Galaxy S smartphone. The full description is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The dataset for this project can be obtained [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## File description:
- `CodeBook.md` describes the variables, the data, and any transformations or work that have been performed to clean up the data.

- `run_analysis.R` includes R code that does the following: 
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- `tidyDataset.txt` is the tidy data set that is created as described in above. 
