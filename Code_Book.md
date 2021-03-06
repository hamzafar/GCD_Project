#*Code Book*
###Human Activity Recognition Using Smartphones Dataset
***

####Transformation & Cleaning:
Since the data contains two sub folders i.e. __train__ and __test__ and for the requirement of project the six data set with three distinct files for both 
	train and test dataset sets named as "X, Y & Subject". These distinct files are merged first by row wise to have 100 % of data and then they are
	combined column wise; That resulted in 10299 rows & 563 columns. In next step the mean and std related variables are selected by parsing the *feature* 
	data set are retrieving the indexes from the file which have mean and std sub-string in colnames, using these indexes the subset of merged data set is 
	then stored in other variable *dataMS* {data mean std}.
	The research is performed in various position [see activity label for more detail] different activities are mapped to *dataMS* by joining according to 
	labels in both of data sets *dataMS & Activity labels (provided with the project dataset)*. The data set is then stored in *dataActivity* and this datset
	is labelled by getting the respective names by the indexes retrieved before. Each of variable description is belown which are divided into three generic sets:
***
	(1).tBodyAcc-mean()-X,tBodyAcc-mean()-Y,tBodyAcc-mean()-Z,tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z,tGravityAcc-mean()-X,tGravityAcc-mean()-Y,tGravityAcc-mean()-Z,tGravityAcc-std()-X,tGravityAcc-std()-Y,tGravityAcc-std()-Z,tBodyAccJerk-mean()-X,tBodyAccJerk-mean()-Y,tBodyAccJerk-mean()-Z,tBodyAccJerk-std()-X,tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z,tBodyGyro-mean()-X,tBodyGyro-mean()-Y,tBodyGyro-mean()-Z,tBodyGyro-std()-X,tBodyGyro-std()-Y,tBodyGyro-std()-Z,tBodyGyroJerk-mean()-X,tBodyGyroJerk-mean()-Y,tBodyGyroJerk-mean()-Z,tBodyGyroJerk-std()-X,tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z,tBodyAccMag-mean(),tBodyAccMag-std(),tGravityAccMag-mean(),tGravityAccMag-std(),tBodyAccJerkMag-mean(),tBodyAccJerkMag-std(),tBodyGyroMag-mean(),tBodyGyroMag-std(),tBodyGyroJerkMag-mean(),tBodyGyroJerkMag-std(),fBodyAcc-mean()-X,fBodyAcc-mean()-Y,fBodyAcc-mean()-Z,fBodyAcc-std()-X,fBodyAcc-std()-Y,fBodyAcc-std()-Z,fBodyAcc-meanFreq()-X,fBodyAcc-meanFreq()-Y,fBodyAcc-meanFreq()-ZfBodyAccJerk-mean()-X,fBodyAccJerk-mean()-Y,fBodyAccJerk-mean()-Z,fBodyAccJerk-std()-X,fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z,fBodyAccJerk-meanFreq()-X,fBodyAccJerk-meanFreq()-Y,fBodyAccJerk-meanFreq()-Z,fBodyGyro-mean()-X,fBodyGyro-mean()-Y,fBodyGyro-mean()-Z,fBodyGyro-std()-X,fBodyGyro-std()-Y,fBodyGyro-std()-Z,fBodyGyro-meanFreq()-X,fBodyGyro-meanFreq()-Y,fBodyGyro-meanFreq()-Z,fBodyAccMag-mean(),fBodyAccMag-std(),fBodyAccMag-meanFreq(),fBodyBodyAccJerkMag-mean(),fBodyBodyAccJerkMag-std(),fBodyBodyAccJerkMag-meanFreq(),fBodyBodyGyroMag-mean(),fBodyBodyGyroMag-std(),fBodyBodyGyroMag-meanFreq(),fBodyBodyGyroJerkMag-mean(),fBodyBodyGyroJerkMag-std(),fBodyBodyGyroJerkMag-meanFreq(),

* The first set contains 79 variables which contain mean and standard deviation of different body movement along __X, Y, & Z__ axis.The different combination
of jerk and magnitude on body acceleration, body gyro(rotation) and bodygravity affect and these are calculated w.r.t Time and Fourier Transform. The Time
and Fourier Transform is marked as t and f at the beginging of variable respectively.
	+ numeric class
	
	  Short Name    |      Full Name
	--------------- | -------------------
		t			|	Time
		f			|	Fourier Transform
		Acc			|	Acceleration
		Mag			|	Magnitude
		Freq		|	Frequency
	
* (2). The *__subj__* variable contains the information about the people who were subjected to research
	+ 1-30 values
	+ integer Class

* (3). The *__activity__* variable have six distinct values of activity of people i.e. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) who were wearing the smart phone
	+ factor class
	
***
####Variable Description:
This Section describes the variables names and their usages in the scripts. For better understanding a table is constructed bellow that has the variable names 
and description:
	
	Variable Name 	|	Description
	--------------  |  ------------
	x_train			|	reads the training data set from training sub folder.
	y_train			|	contain the label dataset for training 
	subject_train	|	have lablels of people subjected to research
	x_test			|	this variable have the test data set 
	y_test			|	similarly labels for test data
	subject_test	|	information about the subjected people
	datComb			|	combined dataset retrieved from the test and training data
	features		|	this variable holds the features.txt file. index number and their names
	idxM			|	indexes of mean measurement extract from the features by graping the rows where mean matching
	idxS			|	similar as idxM but here std is matched
	dataMS			|	data set which only have mean and std fields; these are extracted from idxM and idxS
	dataActivity	|	the dataMS is matched with respective activity label from the activity_labels and store the activity description
	varNam			|	the variable contains names of column, which are selected in dataMS phase
	tidyData		|	this is final dataset which contain the mean values of each field with respect to the activity and subject of record.