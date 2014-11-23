 a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

##This file describes the variables, the data, and any transformations or work was performed for the project

## The data for the project was downloaded from the folder

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## The data used for the analysis includes the following

### Measurements file - X_test.txt, x_train_txt
### Activity files - y_text.txt, y_train.txt
### Subject files - subject_test.txt, subject_train.txt


## Lookup files to obtain field descriptions include
###Activity_labels.txt
###Features.txt

##Documentation files used for understaing the data icludes
###features_info.txt
###README.txt

##The features.txt file gives the names of the 561 variables measured. The names of the fields measuring mean and std can be easily filtered out from this file.

##The preparation and transformation of data for this project has been quite straightforward. The seps has been implemented in the projct is mentioned in README.md file.

The input data in test file has 2947 rows and 561 columns
The inout data in train file has 7352 rows and 561 columns
of these, only 86 fields has mean and std measurements

testDs, testDsActivity, testDsSubject data frame variables hold the data read from text files for test dataset. 
trainDs, trainDsActivity, trainDsSubject data fram variables hold the data read from text files for train dataset
features variable hold the field name information.
All these files are read using read.csv function

requiredCols variable hold the field names for mean and std variables

The allDS variable in the has code all the inout test and train data mean and std fields and also Activity and Subject field


Finally the aggregation is done using the aggregate function and the result stored in summary varible and is sorted using order function

The results of analysis that represents the average for the mean and std variables for each Activity/ Subject group can be found in results.txt

There are 6 Activities and 30 subjects

Therefor are 88 colmns in this file and 180 rows.

The field found in Results.txt are 

1. Activity - The possible values for this field can be found in Activity_labels.txt
2. Subject- The possible values for this are 1:30
Fields from 3:88 are mean and standard deviation fields mentioned below

tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq
angletBodyAccMean,gravity
angletBodyAccJerkMean,gravityMean
angletBodyGyroMean,gravityMean
angletBodyGyroJerkMean,gravityMean
angleX,gravityMean
angleY,gravityMean
angleZ,gravityMean


