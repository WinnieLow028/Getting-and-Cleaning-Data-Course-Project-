# CodeBook for the Getting and Cleaning Data Course Project

## Introduction
This is the codebook for the "Getting and Cleaning Data" Course Project. 

The raw data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The full description of the data is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Raw Data Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#### The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

#### Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

## Produced Tidydata
The final dataset that is produced for this project is `tidyDataset.txt`. The file has gone through the following modifications from the raw data:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Please refer to `run_analysis.R` for the detailed codes. 

### Tidydata Description
#### The tidydata includes the following variables:
 [1] "Subject"                                           
 [2] "Activity"                                          
 [3] "TimeBodyAccelerometer.mean...X"                    
 [4] "TimeBodyAccelerometer.mean...Y"                    
 [5] "TimeBodyAccelerometer.mean...Z"                    
 [6] "TimeGravityAccelerometer.mean...X"                 
 [7] "TimeGravityAccelerometer.mean...Y"                 
 [8] "TimeGravityAccelerometer.mean...Z"                 
 [9] "TimeBodyAccelerometerJerk.mean...X"                
[10] "TimeBodyAccelerometerJerk.mean...Y"                
[11] "TimeBodyAccelerometerJerk.mean...Z"                
[12] "TimeBodyGyroscope.mean...X"                        
[13] "TimeBodyGyroscope.mean...Y"                        
[14] "TimeBodyGyroscope.mean...Z"                        
[15] "TimeBodyGyroscopeJerk.mean...X"                    
[16] "TimeBodyGyroscopeJerk.mean...Y"                    
[17] "TimeBodyGyroscopeJerk.mean...Z"                    
[18] "TimeBodyAccelerometerMagnitude.mean.."             
[19] "TimeGravityAccelerometerMagnitude.mean.."          
[20] "TimeBodyAccelerometerJerkMagnitude.mean.."         
[21] "TimeBodyGyroscopeMagnitude.mean.."                 
[22] "TimeBodyGyroscopeJerkMagnitude.mean.."             
[23] "FrequencyBodyAccelerometer.mean...X"               
[24] "FrequencyBodyAccelerometer.mean...Y"               
[25] "FrequencyBodyAccelerometer.mean...Z"               
[26] "FrequencyBodyAccelerometer.meanFreq...X"           
[27] "FrequencyBodyAccelerometer.meanFreq...Y"           
[28] "FrequencyBodyAccelerometer.meanFreq...Z"           
[29] "FrequencyBodyAccelerometerJerk.mean...X"           
[30] "FrequencyBodyAccelerometerJerk.mean...Y"           
[31] "FrequencyBodyAccelerometerJerk.mean...Z"           
[32] "FrequencyBodyAccelerometerJerk.meanFreq...X"       
[33] "FrequencyBodyAccelerometerJerk.meanFreq...Y"       
[34] "FrequencyBodyAccelerometerJerk.meanFreq...Z"       
[35] "FrequencyBodyGyroscope.mean...X"                   
[36] "FrequencyBodyGyroscope.mean...Y"                   
[37] "FrequencyBodyGyroscope.mean...Z"                   
[38] "FrequencyBodyGyroscope.meanFreq...X"               
[39] "FrequencyBodyGyroscope.meanFreq...Y"               
[40] "FrequencyBodyGyroscope.meanFreq...Z"               
[41] "FrequencyBodyAccelerometerMagnitude.mean.."        
[42] "FrequencyBodyAccelerometerMagnitude.meanFreq.."    
[43] "FrequencyBodyAccelerometerJerkMagnitude.mean.."    
[44] "FrequencyBodyAccelerometerJerkMagnitude.meanFreq.."
[45] "FrequencyBodyGyroscopeMagnitude.mean.."            
[46] "FrequencyBodyGyroscopeMagnitude.meanFreq.."        
[47] "FrequencyBodyGyroscopeJerkMagnitude.mean.."        
[48] "FrequencyBodyGyroscopeJerkMagnitude.meanFreq.."    
[49] "angle.tBodyAccelerometerMean.gravity."             
[50] "angle.tBodyAccelerometerJerkMean..gravityMean."    
[51] "angle.tBodyGyroscopeMean.gravityMean."             
[52] "angle.tBodyGyroscopeJerkMean.gravityMean."         
[53] "angle.X.gravityMean."                              
[54] "angle.Y.gravityMean."                              
[55] "angle.Z.gravityMean."                              
[56] "TimeBodyAccelerometer.std...X"                     
[57] "TimeBodyAccelerometer.std...Y"                     
[58] "TimeBodyAccelerometer.std...Z"                     
[59] "TimeGravityAccelerometer.std...X"                  
[60] "TimeGravityAccelerometer.std...Y"                  
[61] "TimeGravityAccelerometer.std...Z"                  
[62] "TimeBodyAccelerometerJerk.std...X"                 
[63] "TimeBodyAccelerometerJerk.std...Y"                 
[64] "TimeBodyAccelerometerJerk.std...Z"                 
[65] "TimeBodyGyroscope.std...X"                         
[66] "TimeBodyGyroscope.std...Y"                         
[67] "TimeBodyGyroscope.std...Z"                         
[68] "TimeBodyGyroscopeJerk.std...X"                     
[69] "TimeBodyGyroscopeJerk.std...Y"                     
[70] "TimeBodyGyroscopeJerk.std...Z"                     
[71] "TimeBodyAccelerometerMagnitude.std.."              
[72] "TimeGravityAccelerometerMagnitude.std.."           
[73] "TimeBodyAccelerometerJerkMagnitude.std.."          
[74] "TimeBodyGyroscopeMagnitude.std.."                  
[75] "TimeBodyGyroscopeJerkMagnitude.std.."              
[76] "FrequencyBodyAccelerometer.std...X"                
[77] "FrequencyBodyAccelerometer.std...Y"                
[78] "FrequencyBodyAccelerometer.std...Z"                
[79] "FrequencyBodyAccelerometerJerk.std...X"            
[80] "FrequencyBodyAccelerometerJerk.std...Y"            
[81] "FrequencyBodyAccelerometerJerk.std...Z"            
[82] "FrequencyBodyGyroscope.std...X"                    
[83] "FrequencyBodyGyroscope.std...Y"                    
[84] "FrequencyBodyGyroscope.std...Z"                    
[85] "FrequencyBodyAccelerometerMagnitude.std.."         
[86] "FrequencyBodyAccelerometerJerkMagnitude.std.."     
[87] "FrequencyBodyGyroscopeMagnitude.std.."             
[88] "FrequencyBodyGyroscopeJerkMagnitude.std.."    

### Identifiers
The first two column "Subject" and "Activity" serve as identifiers. "Subject" represents the participants' ID while "Activity" represents the activity performed by the participant.   

The remaining variables are measurements that are collected. 
