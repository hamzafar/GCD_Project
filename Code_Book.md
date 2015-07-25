#*Code Book*
###Human Activity Recognition Using Smartphones Dataset
***
> Transformation & Cleaning:
	Since the data contains two sub folders i.e. __train__ and __test__ and for the requirement of project the six data set with three distinct files for both train and test dataset sets named as "X, Y & Subject". These distinct files are merged first by row wise to have 100 % of data and then they are combined column wise; That resulted in 10299 rows & 563 columns.
***
1.	tBodyAcc-mean()-X
2.	tBodyAcc-mean()-Y
3.	tBodyAcc-mean()-Z
4.	tBodyAcc-std()-X
5.	tBodyAcc-std()-Y
6.	tBodyAcc-std()-Z
7.	tGravityAcc-mean()-X
8.	tGravityAcc-mean()-Y
9.	tGravityAcc-mean()-Z
10.	tGravityAcc-std()-X
11.	tGravityAcc-std()-Y
12.	tGravityAcc-std()-Z
13.	tBodyAccJerk-mean()-X
14.	tBodyAccJerk-mean()-Y
15.	tBodyAccJerk-mean()-Z
16.	tBodyAccJerk-std()-X
17.	tBodyAccJerk-std()-Y
18.	tBodyAccJerk-std()-Z
19.	tBodyGyro-mean()-X
20.	tBodyGyro-mean()-Y
21.	tBodyGyro-mean()-Z
22.	tBodyGyro-std()-X
23.	tBodyGyro-std()-Y
24.	tBodyGyro-std()-Z
25.	tBodyGyroJerk-mean()-X
26.	tBodyGyroJerk-mean()-Y
27.	tBodyGyroJerk-mean()-Z
28.	tBodyGyroJerk-std()-X
29.	tBodyGyroJerk-std()-Y
30.	tBodyGyroJerk-std()-Z
31.	tBodyAccMag-mean()
32.	tBodyAccMag-std()
33.	tGravityAccMag-mean()
34.	tGravityAccMag-std()
35.	tBodyAccJerkMag-mean()
36.	tBodyAccJerkMag-std()
37.	tBodyGyroMag-mean()
38.	tBodyGyroMag-std()
39.	tBodyGyroJerkMag-mean()
40.	tBodyGyroJerkMag-std()
41.	fBodyAcc-mean()-X
42.	fBodyAcc-mean()-Y
43.	fBodyAcc-mean()-Z
44.	fBodyAcc-std()-X
45.	fBodyAcc-std()-Y
46.	fBodyAcc-std()-Z
47.	fBodyAcc-meanFreq()-X
48.	fBodyAcc-meanFreq()-Y
49.	fBodyAcc-meanFreq()-Z
50.	fBodyAccJerk-mean()-X
51.	fBodyAccJerk-mean()-Y
52.	fBodyAccJerk-mean()-Z
53.	fBodyAccJerk-std()-X
54.	fBodyAccJerk-std()-Y
55.	fBodyAccJerk-std()-Z
56.	fBodyAccJerk-meanFreq()-X
57.	fBodyAccJerk-meanFreq()-Y
58.	fBodyAccJerk-meanFreq()-Z
59.	fBodyGyro-mean()-X
60.	fBodyGyro-mean()-Y
61.	fBodyGyro-mean()-Z
62.	fBodyGyro-std()-X
63.	fBodyGyro-std()-Y
64.	fBodyGyro-std()-Z
65.	fBodyGyro-meanFreq()-X
66.	fBodyGyro-meanFreq()-Y
67.	fBodyGyro-meanFreq()-Z
68.	fBodyAccMag-mean()
69.	fBodyAccMag-std()
70.	fBodyAccMag-meanFreq()
71.	fBodyBodyAccJerkMag-mean()
72.	fBodyBodyAccJerkMag-std()
73.	fBodyBodyAccJerkMag-meanFreq()
74.	fBodyBodyGyroMag-mean()
75.	fBodyBodyGyroMag-std()
76.	fBodyBodyGyroMag-meanFreq()
77.	fBodyBodyGyroJerkMag-mean()
78.	fBodyBodyGyroJerkMag-std()
79.	fBodyBodyGyroJerkMag-meanFreq()
80.	subj
	* subj variable contains the information about the people who were subjected to research
		+ 1-30 values
		+ integer Class
81.	activity
	* The variable have six distinct values of activity of people i.e. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) who were
	wearing the smart phone
		+ factor class