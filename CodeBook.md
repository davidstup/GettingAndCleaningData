
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals prefix "time_" were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. Note the "frequency_" to indicate frequency domain signals). 

The set of variables that were include from these signals are: 

mean(): Mean value
std(): Standard deviation

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

  "time_BodyAcc_mean_X",
    "time_BodyAcc_mean_Y",
    "time_BodyAcc_mean_Z",
    "time_BodyAcc_stdev_X",
    "time_BodyAcc_stdev_Y",
    "time_BodyAcc_stdev_Z",
    "time_GravityAcc_mean_X",
    "time_GravityAcc_mean_Y",
    "time_GravityAcc_mean_Z",
    "time_GravityAcc_stdev_X",
    "time_GravityAcc_stdev_Y",
    "time_GravityAcc_stdev_Z",
    "time_BodyAccJerk_mean_X",
    "time_BodyAccJerk_mean_Y",
    "time_BodyAccJerk_mean_Z",
    "time_BodyAccJerk_stdev_X",
    "time_BodyAccJerk_stdev_Y",
    "time_BodyAccJerk_stdev_Z",
    "time_BodyGyro_mean_X",
    "time_BodyGyro_mean_Y",
    "time_BodyGyro_mean_Z",
    "time_BodyGyro_stdev_X",
    "time_BodyGyro_stdev_Y",
    "time_BodyGyro_stdev_Z",
    "time_BodyGyroJerk_mean_X",
    "time_BodyGyroJerk_mean_Y",
    "time_BodyGyroJerk_mean_Z",
    "time_BodyGyroJerk_stdev_X",
    "time_BodyGyroJerk_stdev_Y",
    "time_BodyGyroJerk_stdev_Z",
    "time_BodyAccMag_mean",
    "time_BodyAccMag_stdev",
    "time_GravityAccMag_mean",
    "time_GravityAccMag_stdev",
    "time_BodyAccJerkMag_mean",
    "time_BodyAccJerkMag_stdev",
    "time_BodyGyroMag_mean",
    "time_BodyGyroMag_stdev",
    "time_BodyGyroJerkMag_mean",
    "time_BodyGyroJerkMag_stdev",
    "frequency_BodyAcc_mean_X",
    "frequency_BodyAcc_mean_Y",
    "frequency_BodyAcc_mean_Z",
    "frequency_BodyAcc_stdev_X",
    "frequency_BodyAcc_stdev_Y",
    "frequency_BodyAcc_stdev_Z",
    "frequency_BodyAccJerk_mean_X",
    "frequency_BodyAccJerk_mean_Y",
    "frequency_BodyAccJerk_mean_Z",
    "frequency_BodyAccJerk_stdev_X",
    "frequency_BodyAccJerk_stdev_Y",
    "frequency_BodyAccJerk_stdev_Z",
    "frequency_BodyGyro_mean_X",
    "frequency_BodyGyro_mean_Y",
    "frequency_BodyGyro_mean_Z",
    "frequency_BodyGyro_stdev_X",
    "frequency_BodyGyro_stdev_Y",
    "frequency_BodyGyro_stdev_Z",
    "frequency_BodyAccMag_mean",
    "frequency_BodyAccMag_stdev",
    "frequency_BodyBodyAccJerkMag_mean",
    "frequency_BodyBodyAccJerkMag_stdev",
    "frequency_BodyBodyGyroMag_mean",
    "frequency_BodyBodyGyroMag_stdev",
    "frequency_BodyBodyGyroJerkMag_mean",
    "frequency_BodyBodyGyroJerkMag_stdev",
    "activity",
    "subject",
    "source"
    "V1"

The code book
1.	The information about the variables (including units) in the data set not contained in the tidy data
2.	Information about the summary choices you made
3.	Information about the experimental study design you used
4.	Use a common format
5.	“Study design” section can describe how you collected the data

