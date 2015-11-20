##Codebook for run_analysis.R

  run_analysis.R takes a set of data collected from the accelerometers of Samsung Galaxy S smartphones and tidies the data to produce a file that contains averages of mean and standard deviation per subject, per activity. 
 
###The program uses the following files from the data set
- 'train/X_train.txt': Training set - A 561-feature vector with time and frequency domain variables.
- 'train/y_train.txt': Training activity labels (range 1 to 6).
- 'test/X_test.txt': Test set -  A 561-feature vector with time and frequency domain variables.
- 'test/y_test.txt': Test activity labels (range 1 to 6).
- 'features.txt': meaningful feature names for each of the 561 features
- 'activity_labels.txt': meaningful activity names for each of the 6 activities
- 'train/subject_train.txt': train subjects (range 1 to 30)
- 'test/subject_test.txt': test subjects (range 1 to 30)

###The program transforms the data as follows
- combines the test files
- combines the train files
- merges the test and train data
- limits the merged data to only features that measure mean and standard deviation
- adds a meaningful activity label to each row
- renames the features with their meaningful names
- melts the data, then casts it to create one record with the average of each variable, per subject, per activity

###Variables in output file and their units of measure
- tBodyAcc-mean()-X   (standard gravity units)
- tBodyAcc-mean()-Y   (standard gravity units)
- tBodyAcc-mean()-Z   (standard gravity units)
- tBodyAcc-std()-X   (standard gravity units)
- tBodyAcc-std()-Y   (standard gravity units)
- tBodyAcc-std()-Z   (standard gravity units)
- tGravityAcc-mean()-X   (standard gravity units)
- tGravityAcc-mean()-Y   (standard gravity units)
- tGravityAcc-mean()-Z   (standard gravity units)
- tGravityAcc-std()-X   (standard gravity units)
- tGravityAcc-std()-Y   (standard gravity units)
- tGravityAcc-std()-Z   (standard gravity units)
- tBodyAccJerk-mean()-X   (standard gravity units)
- tBodyAccJerk-mean()-Y   (standard gravity units)
- tBodyAccJerk-mean()-Z   (standard gravity units)
- tBodyAccJerk-std()-X   (standard gravity units)
- tBodyAccJerk-std()-Y   (standard gravity units)
- tBodyAccJerk-std()-Z   (standard gravity units)
- tBodyGyro-mean()-X   (radians/second)
- tBodyGyro-mean()-Y   (radians/second)
- tBodyGyro-mean()-Z   (radians/second)
- tBodyGyro-std()-X   (radians/second)
- tBodyGyro-std()-Y   (radians/second)
- tBodyGyro-std()-Z   (radians/second)
- tBodyGyroJerk-mean()-X   (radians/second)
- tBodyGyroJerk-mean()-Y   (radians/second)
- tBodyGyroJerk-mean()-Z   (radians/second)
- tBodyGyroJerk-std()-X   (radians/second)
- tBodyGyroJerk-std()-Y   (radians/second)
- tBodyGyroJerk-std()-Z   (radians/second)
- tBodyAccMag-mean()   (standard gravity units)
- tBodyAccMag-std()   (standard gravity units)
- tGravityAccMag-mean()   (standard gravity units)
- tGravityAccMag-std()   (standard gravity units)
- tBodyAccJerkMag-mean()   (standard gravity units)
- tBodyAccJerkMag-std()   (standard gravity units)
- tBodyGyroMag-mean()   (radians/second)
- tBodyGyroMag-std()   (radians/second)
- tBodyGyroJerkMag-mean()   (radians/second)
- tBodyGyroJerkMag-std()   (radians/second)
- fBodyAcc-mean()-X   (standard gravity units)
- fBodyAcc-mean()-Y   (standard gravity units)
- fBodyAcc-mean()-Z   (standard gravity units)
- fBodyAcc-std()-X   (standard gravity units)
- fBodyAcc-std()-Y   (standard gravity units)
- fBodyAcc-std()-Z   (standard gravity units)
- fBodyAccJerk-mean()-X   (standard gravity units)
- fBodyAccJerk-mean()-Y   (standard gravity units)
- fBodyAccJerk-mean()-Z   (standard gravity units)
- fBodyAccJerk-std()-X   (standard gravity units)
- fBodyAccJerk-std()-Y   (standard gravity units)
- fBodyAccJerk-std()-Z   (standard gravity units)
- fBodyGyro-mean()-X   (radians/second)
- fBodyGyro-mean()-Y   (radians/second)
- fBodyGyro-mean()-Z   (radians/second)
- fBodyGyro-std()-X   (radians/second)
- fBodyGyro-std()-Y   (radians/second)
- fBodyGyro-std()-Z   (radians/second)
- fBodyAccMag-mean()   (standard gravity units)
- fBodyAccMag-std()   (standard gravity units)
- fBodyBodyAccJerkMag-mean()   (standard gravity units)
- fBodyBodyAccJerkMag-std()   (standard gravity units)
- fBodyBodyGyroMag-mean()   (radians/second)
- fBodyBodyGyroMag-std()   (radians/second)
- fBodyBodyGyroJerkMag-mean()   (radians/second)
- fBodyBodyGyroJerkMag-std()   (radians/second)
