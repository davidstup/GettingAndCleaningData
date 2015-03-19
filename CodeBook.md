
This code book describes the variables, the data, and any transformations or work that were performed to clean up the data

The features selected for this data set came from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals prefix "time_" were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. Note the "frequency_" to indicate frequency domain signals). 

Link to the initial data set source:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The set of variables that were included from these signals are: 

mean(): Mean value
std(): Standard deviation

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Included below is a list of all the variables included in the tidy set. 

    time_BodyAcc_mean_X - mean time of the X body acc motion
    time_BodyAcc_mean_Y - mean time of the Y body acc motion
    time_BodyAcc_mean_Z - mean time of the Z body acc motion
    time_BodyAcc_stdev_X - std deviation time of the X body acc motion
    time_BodyAcc_stdev_Y - std deviation time of the Y body acc motion
    time_BodyAcc_stdev_Z - std deviation time of the Z body acc motion
    time_GravityAcc_mean_X - mean time of the X gravity acc motion
    time_GravityAcc_mean_Y - mean time of the Y gravity acc motion
    time_GravityAcc_mean_Z - mean time of the Z gravity acc motion
    time_GravityAcc_stdev_X - std deviation time of the X gravity acc motion
    time_GravityAcc_stdev_Y - std deviation time of the Y gravity acc motion
    time_GravityAcc_stdev_Z - std deviation time of the Z gravity acc motion
    time_BodyAccJerk_mean_X - mean time of the X body acc jerk motion
    time_BodyAccJerk_mean_Y - mean time of the Y body acc jerk motion
    time_BodyAccJerk_mean_Z - mean time of the Z body acc jerk motion
    time_BodyAccJerk_stdev_X - std deviation time of the X body acc jerk motion
    time_BodyAccJerk_stdev_Y - std deviation time of the Y body acc jerk motion
    time_BodyAccJerk_stdev_Z - std deviation time of the Z body acc jerk motion
    time_BodyGyro_mean_X - mean time of the X body gyro motion
    time_BodyGyro_mean_Y - mean time of the Y body gyro motion
    time_BodyGyro_mean_Z - mean time of the Z body gyro motion
    time_BodyGyro_stdev_X  - std deviation time of the X body gyro motion
    time_BodyGyro_stdev_Y - std deviation time of the Y body gyro motion
    ime_BodyGyro_stdev_Z - std deviation time of the Z body gyro motion
    time_BodyGyroJerk_mean_X - mean time of the X body gyro jerk motion
    time_BodyGyroJerk_mean_Y - mean time of the Y body gyro jerk motion
    time_BodyGyroJerk_mean_Z - mean time of the Z body gyro jerk motion
    time_BodyGyroJerk_stdev_X - std deviation time of the X body gyro jerk motion
    time_BodyGyroJerk_stdev_Y - std deviation time of the Y body gyro jerk motion
    time_BodyGyroJerk_stdev_Z - std deviation time of the Z body gyro jerk motion
    time_BodyAccMag_mean - mean time of the body acc mag motion
    time_BodyAccMag_stdev - std deviation time of the body acc mag motion
    time_GravityAccMag_mean - mean time of the gravity acc mag motion
    time_GravityAccMag_stdev - std deviation time of gravity acc mag motion
    time_BodyAccJerkMag_mean - mean time of the body acc jerk mag motion
    time_BodyAccJerkMag_stdev - std deviation time of the body acc jerk mag motion
    time_BodyGyroMag_mean - mean time of the body gyro motion
    time_BodyGyroMag_stdev - std deviation time of the body gyro mag motion
    time_BodyGyroJerkMag_mean - mean time of the body gyro jerk mag 
    time_BodyGyroJerkMag_stdev - std deviation time of the body gyro jerk mag
    "frequency_BodyAcc_mean_X - mean frequency time of X body acc
    frequency_BodyAcc_mean_Y -  mean frequency time of Y body acc
    frequency_BodyAcc_mean_Z -  mean frequency time of Z body acc
    frequency_BodyAcc_stdev_X - std deviation frequency time of X body acc
    frequency_BodyAcc_stdev_Y -  std deviation frequency time of Y body acc
    frequency_BodyAcc_stdev_Z -  std deviation frequency time of Z body acc
    frequency_BodyAccJerk_mean_X -  mean frequency time of X body acc jerk
    frequency_BodyAccJerk_mean_Y -   mean frequency time of Y body acc jerk
    frequency_BodyAccJerk_mean_Z -   mean frequency time of Z body acc jerk
    frequency_BodyAccJerk_stdev_X -   std deviation frequency time of X body acc jerk
    frequency_BodyAccJerk_stdev_Y -    std deviation frequency time of Y body acc jerk
    frequency_BodyAccJerk_stdev_Z -    std deviation frequency time of Z body acc jerk
    frequency_BodyGyro_mean_X - mean frequency time of X body gyro
    frequency_BodyGyro_mean_Y -  mean frequency time of Y body gyro
    frequency_BodyGyro_mean_Z -  mean frequency time of Z body gyro
    frequency_BodyGyro_stdev_X -   std deviation frequency time of X body gyro
    frequency_BodyGyro_stdev_Y -   std deviation frequency time of Y body gyro
    frequency_BodyGyro_stdev_Z -   std deviation frequency time of Z body gyro
    frequency_BodyAccMag_mean -   mean frequency time of body gyro
    frequency_BodyAccMag_stdev -   std deviation frequency time of body gyro
    frequency_BodyBodyAccJerkMag_mean -   mean frequency time of body body acc jerk mag
    frequency_BodyBodyAccJerkMag_stdev -  std deviation frequency time of the body body acc jerk mag
    frequency_BodyBodyGyroMag_mean -  mean frequency time of body body gyro mag
    frequency_BodyBodyGyroMag_stdev -  std deviation frequency time of body body acc jerk mag
    frequency_BodyBodyGyroJerkMag_mean -  mean frequency time of body body gyro jerk mag
    frequency_BodyBodyGyroJerkMag_stdev -  std deviation frequency time of body body acc jerk mag
    activity - includes walking, walking upstairs, walking downstairs, sitting, standing and laying
    subject - is the id of the subject/person that the data was collected from 
    source - is either test or train (test subject or the training)
    V1 - is the activity id

The test and train data sets were merged by the X and Y values.  The subject id's were also merged.  The activity descriptions were merged/joined to the data set.  The test and train data sets were then appended to each other to produce 10299 records. 

Finally, the data set was summarized (means) using the ddply function by the subject and the activity fields for all of the mean and std deviation values.  This summary data set was written out to a text file named: run_analysis.txt in the working directory.

Notes about 'The code book'
1.	The information about the variables (including units) in the data set not contained in the tidy data
2.	Information about the summary choices you made
3.	Information about the experimental study design you used
4.	Use a common format


