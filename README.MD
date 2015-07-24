#README
##DESCRIBE THE FLOW OF CODE

The Script needs to be run in console. The script uses "plyr" package so you must first install the package.
The script reads both train and test file and their label and subject files respectively. The 6 files of x, y and subject are first combined by row-wise
rbind function then these are combined into one dataset using cbind function. The mean and std of measurement are extracted by first reading the features
set and then matching the "mean & std" from the file and  their indexes are retrieved. using these indexes the subset of data from combined data set is extracted.
this subset data is then merged using label of activity from activity dataset. And each row is marked with the activity either walking, standing etc.
The names of the mean and std variable which are used before for indexes are then giving to the formed dataset of activity labels. Finally, the dataset is 
aggregated w.r.t. activity and subject label by mean function. That result in 180 rows.