##First of all get the file that contains all the field names
##This step statisfies the requirement number 4 of the assignment
features = read.csv("UCI HAR Dataset/features.txt", sep="", header= FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

##Now get the test and train datasets and set the names for all the fields that was obtained
##from features.txt and stores in features data frame
testDs = read.csv("UCI HAR Dataset/test/x_test.txt", sep="", header= FALSE)
trainDs = read.csv("UCI HAR Dataset/train/x_train.txt", sep="", header= FALSE)

##rename testname test and train column names
colnames(testDs) <- as.character(features$V2)
colnames(trainDs) <- as.character(features$V2)


##now get the mean and std cols
requiredCols <- grep("mean|std", features$V2, ignore.case= TRUE, value=TRUE)

##now extract requires data from test and train ds
##This step statisfies the requirement number 2 of the assignment
testDs <- testDs[requiredCols]
trainDs <- trainDs[requiredCols]

##now add activity and subject columns to test and train data sets
testDsActivity = read.csv("UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
colnames(testDsActivity) <- c("Activity")

testDsSubject = read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
colnames(testDsSubject) <- c("Subject")

testDs <- cbind(testDs, testDsActivity, testDsSubject)

trainDsActivity = read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
colnames(trainDsActivity) <- c("Activity")

trainDsSubject = read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
colnames(trainDsSubject) <- c("Subject")

trainDs <- cbind(trainDs, trainDsActivity, trainDsSubject)

##now combine testing and training Datasets. At this statge, we have only mean and std columns in
##the dataset and have activity and subject columns added as well
##This step statisfies the requirement number 1 of the assignment
allDs <- rbind(testDs, trainDs)

##Now replace the activity Labels with proper description
##This step statisfies the requirement number 3 of the assignment
activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
currentActivity = 1
for (currentActivityLabel in activityLabels$V2) {
  allDs$Activity <- gsub(currentActivity, currentActivityLabel, allDs$Activity)
  currentActivity <- currentActivity + 1
}

##Now get the average for each activity/ subject and write the results to a text file
##This step statisfies the requirement number 5 of the assignment
summary <- aggregate(x = allDs[1:86], by = list(Activity=allDs$Activity, subject=allDs$Subject), FUN = "mean")
summary<- summary[order(c(summary$Activity, summary$Subject)),]
write.table(summary, "results.txt", sep="\t", row.names= FALSE)


