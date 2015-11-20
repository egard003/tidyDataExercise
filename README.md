##An explanation of run_analysis.R
  
  run_analysis.R takes a set of data collected from the accelerometers of Samsung Galaxy S smartphones and tidies the data to produce a file that contains averages of mean and standard deviation per subject, per activity. 

Per the assignment, the program assumes the data set is in the present working directory. Also per the assignment, the program accomplishes the tidying task in five steps:
  
1. **Merge test and train data.** The test and train data each have three files that need to be merged. The program
  
  * reads the three test files and combines them
  * reads the three train files and combines them
  * combines the rows of the combined test and train files  into a dataframe called "merged". 
  * renames the subject and activity columns to be meaningful. 

2. **Extract only measurements on mean and stddev.** The file, features.txt, included in the data set, contains meaningful names for each of the 561 features in the data. To extract from the data only the features on mean and stddev, the program
  * reads features.txt and creates a list of the feature names
  * creates a list of column names from the merged data. These names are meaningless - V1, V2, V3, etc. 
  * sets the names of the features list to the list of column names, effectively creating a set of key-value pairs. For instance, V1 is now paired with tBodyAcc-mean()-X
.  
  * searches the key-value pairs for values containing "mean" or "std" and saves the keys as a list. 
     * note: there is a measurement of meanFreq, but the assignment did not specify to include meanFreq, so it is not included. 
  * subsets the merged data to a data frame called "limited" that only includes columns with names that match the keys.  

3. **Use descriptive activity names to name the activities in the data set.** The file, activity_labels.txt, included in the dataset, includes meaninful names for each of the six activities. To add the corresponding activity label to each activity in the limited data frame, the program
  * reads activity_labels.txt and renames its columns
  * merges the labels into the limited dataset by joining on the activity numbers
  
4. **Appropriately label data set with descriptive names.** The names of the feature columns in the limited data set are simply set to the values of the list of meaningful names created in step 2. 

5. **Create an independent tidy data set with the average of each variable for each activity and each subject.** The program 
  * melts the data into long format grouping by subject and activity. 
  * casts the data to wide format with a mean calculation of each variable.
  * writes the casted data set to a file
   

