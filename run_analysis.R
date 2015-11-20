#### STEP 1: merge test and train data

test <- read.table("./test/x_test.txt")               #getting test data
testsubs <- read.table("./test/subject_test.txt")     #getting test subjects
testlabels <- read.table("./test/y_test.txt")         #getting test labels
test <- cbind(testsubs, testlabels, test)             #adding subjects and labels columns to test data 

train <- read.table("./train/x_train.txt")            #getting train data
trainsubs <- read.table("./train/subject_train.txt")  #getting train subjects
trainlabels <- read.table("./train/y_train.txt")      #getting train labels
train <- cbind(trainsubs, trainlabels, train)         #adding subjects and labels columns to test data

merged <- rbind(test, train)                          #merging test and train data

colnames(merged)[1] <- "subject"                      #rename subjects column
colnames(merged)[2] <- "act_nums"                     #rename labels column


####STEP 2: extract only measurements on mean and stddev

features <- read.table("features.txt")                #getting features
fnames <- features$V2                                 #creating list of feature names
mnames <- names(merged)[3:563]                        #creating list of column names in merged dataset (V1, V2, etc.)
names(fnames) <- mnames                               #creating key-value list of feature names and column names

meanOrStd_names <- c(grep("(mean[^Freq]|std)",        #getting sublist of feature names with 
                    fnames, value=TRUE,               #"mean" (but not "meanFreq") or "std" 
                    perl=TRUE))                 

meanOrStd_keys <- names(meanOrStd_names)              #getting key values (V1, V2, etc) of mean or std features

limited <- cbind(merged[1:2],                         #subsetting merged dataset to a dataset
                 merged[meanOrStd_keys])              #that only includes columns with column names
                                                      #that match the key values (V1, V2, etc)


####STEP 3: Use descriptive activity names to name the activities in the data set

alabels <- read.table("activity_labels.txt")          #getting descriptive labels

colnames(alabels) <- c("act_nums", "activity")        #renaming columns of alabels

limited <- merge(limited, alabels, by = "act_nums",   #adding activity labels column to limited dataset
                all =TRUE)


####STEP 4: Appropriately label data set with descriptive names

names(limited)[3:68] <- meanOrStd_names              #changing column names in limited dataset to feature names


####STEP 5: Create an independent tidy data set with the average of each variable 
####for each activity and each subject

library(reshape2)

melted <- melt(limited, id=c("subject", "activity")) #melting data to long format 

casted <- dcast(melted, subject + activity           #casting data to wide format with 
                ~ variable, mean)                    #mean calculation of each variable

write.table(casted, "tidyAccelerometerAverages.txt", row.name = FALSE)