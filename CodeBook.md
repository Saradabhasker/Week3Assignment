##Code Book

This file describes the variables, the data, and data transformations performed for the project

The data for the project was downloaded from the folder

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

####The data used for the analysis includes the following

* Measurements file 
	* x_test.txt
	* x_train_txt
* Activity files 
	* y_text.txt
	* y_train.txt
* Subject files 
	* subject_test.txt
	* subject_train.txt


####Lookup files to obtain field descriptions include
* Activity_labels.txt
* features.txt

####Documentation files used for understaing the data includes
* features_info.txt
* README.txt

The features.txt file gives the names of the 561 variables measured. The names of the fields measuring mean and std can be easily filtered out from this file using grep and gsub commands

The preparation and transformation of data for this project has been quite straightforward. The steps implemented in the project is mentioned in README.md file.

###Input file length

* The input data in test file has 2947 rows and 561 columns
* The input data in train file has 7352 rows and 561 columns
* these, only 86 fields has mean and std measurements

###Data frames and other variables used within the script

* testDs, testDsActivity, testDsSubject data frame variables hold the data read from text files for test dataset. 
* trainDs, trainDsActivity, trainDsSubject data fram variables hold the data read from text files for train dataset
* features variable hold the field name information.

All these files are read using read.csv function

* requiredCols variable hold the field names for mean and std variables

* The allDS variable in the has code all the input test and train data mean and std fields and also Activity and Subject fields


Finally the aggregation is done using the aggregate function and the result stored in summary variable and is sorted using order function

The results of analysis that represents the average for the mean and std variables for each Activity / Subject group can be found in results.txt

There are 6 Activities and 30 subjects

Therefor are 180 rows in the result.
There are 88 columns - Activity, Subject and 86 mean/ std columns

The field found in Results.txt are 

1. Activity - The possible values for this field can be found in Activity_labels.txt
2. Subject- The possible values for this are 1:30
3. Fields from 3:88 are mean and standard deviation fields mentioned below

1.. tBodyAccMeanX
2. tBodyAccMeanY
3. tBodyAccMeanZ
4. tBodyAccStdX
5. tBodyAccStdY
6. tBodyAccStdZ
7. tGravityAccMeanX
8. tGravityAccMeanY
9. tGravityAccMeanZ
10. tGravityAccStdX
11. tGravityAccStdY
12. tGravityAccStdZ
13. tBodyAccJerkMeanX
14. tBodyAccJerkMeanY
15. tBodyAccJerkMeanZ
16. tBodyAccJerkStdX
17. tBodyAccJerkStdY
18. tBodyAccJerkStdZ
19. tBodyGyroMeanX
20. tBodyGyroMeanY
21. tBodyGyroMeanZ
22. tBodyGyroStdX
23. tBodyGyroStdY
24. tBodyGyroStdZ
25. tBodyGyroJerkMeanX
26. tBodyGyroJerkMeanY
27. tBodyGyroJerkMeanZ
28. tBodyGyroJerkStdX
29. tBodyGyroJerkStdY
30. tBodyGyroJerkStdZ
31. tBodyAccMagMean
32. tBodyAccMagStd
33. tGravityAccMagMean
34. tGravityAccMagStd
35. tBodyAccJerkMagMean
36. tBodyAccJerkMagStd
37. tBodyGyroMagMean
38. tBodyGyroMagStd
39. tBodyGyroJerkMagMean
40. tBodyGyroJerkMagStd
41. fBodyAccMeanX
42. fBodyAccMeanY
43. fBodyAccMeanZ
44. fBodyAccStdX
45. fBodyAccStdY
46. fBodyAccStdZ
47. fBodyAccMeanFreqX
48. fBodyAccMeanFreqY
49. fBodyAccMeanFreqZ
50. fBodyAccJerkMeanX
51. fBodyAccJerkMeanY
52. fBodyAccJerkMeanZ
53. fBodyAccJerkStdX
54. fBodyAccJerkStdY
55. fBodyAccJerkStdZ
56. fBodyAccJerkMeanFreqX
57. fBodyAccJerkMeanFreqY
58. fBodyAccJerkMeanFreqZ
59. fBodyGyroMeanX
60. fBodyGyroMeanY
61. fBodyGyroMeanZ
62. fBodyGyroStdX
63. fBodyGyroStdY
64. fBodyGyroStdZ
65. fBodyGyroMeanFreqX
66. fBodyGyroMeanFreqY
67. fBodyGyroMeanFreqZ
68. fBodyAccMagMean
69. fBodyAccMagStd
70. fBodyAccMagMeanFreq
71. fBodyBodyAccJerkMagMean
72. fBodyBodyAccJerkMagStd
73. fBodyBodyAccJerkMagMeanFreq
74. fBodyBodyGyroMagMean
75. fBodyBodyGyroMagStd
76. fBodyBodyGyroMagMeanFreq
77. fBodyBodyGyroJerkMagMean
78. fBodyBodyGyroJerkMagStd
79. fBodyBodyGyroJerkMagMeanFreq
80. angletBodyAccMean,gravity
81. angletBodyAccJerkMean,gravityMean
82. angletBodyGyroMean,gravityMean
83. angletBodyGyroJerkMean,gravityMean
84. angleX,gravityMean
85. angleY,gravityMean
86. angleZ,gravityMean


