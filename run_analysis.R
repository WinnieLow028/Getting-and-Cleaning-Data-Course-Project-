# Download data set:
if(!file.exists("./data")){dir.create("./C3_data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./C3_data/C3_Project.zip")

# Unzip:
if(!file.exists("./C3_data/UCI HAR Dataset")){
unzip("./C3_data/C3_Project.zip", exdir="./C3_data")
}

# Discover files in the unziped folder:  
list.files("./C3_data/UCI HAR Dataset", recursive=TRUE)

# Assign data frames
# Read activity labels and features
activity_labels <- read.table("./C3_data/UCI HAR Dataset/activity_labels.txt",
                              col.names=c("Label", "Activity"))
features <- read.table("./C3_data/UCI HAR Dataset/features.txt",
                       col.names = c("n", "Function"))

# Test sets
subject_test <- read.table("./C3_data/UCI HAR Dataset/test/subject_test.txt",
                             col.names="Subject")
x_test <- read.table("./C3_data/UCI HAR Dataset/test/X_test.txt",
                       col.names=features$Function)
y_test <- read.table("./C3_data/UCI HAR Dataset/test/y_test.txt",
                       col.names="Code")
  
# Training sets
subject_train <- read.table("./C3_data/UCI HAR Dataset/train/subject_train.txt",
                              col.names="Subject")
x_train <- read.table("./C3_data/UCI HAR Dataset/train/X_train.txt",
                        col.names=features$Function)
y_train <- read.table("./C3_data/UCI HAR Dataset/train/y_train.txt",
                        col.names="Code")

  
# 1: Merge data set
xdata <- rbind(x_train, x_test)
ydata <- rbind(y_train, y_test)
subjectdata <- rbind(subject_train, subject_test)
merged_data <- cbind(subjectdata, ydata, xdata) 

# 2: Extract only the measurements on the mean and standard
# deviation for each measurement
library(dplyr)
datameanstd <- select(merged_data, Subject, Code,
                      contains("mean"),contains("std"))

# 3: Use descriptive activity names to name the activities in
# the dataset
datameanstd$Code <- (activity_labels[datameanstd$Code,2])
datameanstd <- rename(datameanstd, Activity=Code) 

# 4: Appropriately label the data set with descriptive 
# variable names
names(datameanstd) <- gsub("Acc", "Accelerometer", names(datameanstd))
names(datameanstd) <- gsub("BodyBody", "Body", names(datameanstd))
names(datameanstd) <- gsub("^f", "Frequency", names(datameanstd))
names(datameanstd) <- gsub("Gyro", "Gyroscope", names(datameanstd))
names(datameanstd) <- gsub("Mag", "Magnitude", names(datameanstd))
names(datameanstd) <- gsub("^t", "Time", names(datameanstd))

# 5: From the data set in step 4, create a second, independent
# tidy data set with the average of each variable for each
# activity and each subject.
tidydata <- aggregate(.~Subject + Activity, datameanstd, mean)
write.table(tidydata, file="tidyDataset.txt", row.names=FALSE)
