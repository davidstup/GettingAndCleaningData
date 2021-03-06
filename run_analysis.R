run_analysis <- function() {
  
  set.seed(13)
  
  ## read in the test data sets
  xtest <- read.table("C:/Stup/Coursera/UCI HAR Dataset/test/X_test.txt")
  
  ytest <- read.table("C:/Stup/Coursera/UCI HAR Dataset/test/y_test.txt")
  
  subjecttest <- read.table("C:/Stup/Coursera/UCI HAR Dataset/test/subject_test.txt")
  
  ## read in the activity labels
  activity <- read.table("C:/Stup/Coursera/UCI HAR Dataset/activity_labels.txt")
  
  colnames(activity) <- c("V1","activity")
  
  ytest2 <- merge(ytest,activity,by = "V1")
  
  ## read in the train data sets
  xtrain <- read.table("C:/Stup/Coursera/UCI HAR Dataset/train/X_train.txt")
  
  ytrain <- read.table("C:/Stup/Coursera/UCI HAR Dataset/train/y_train.txt")
  
  subjecttrain <- read.table("C:/Stup/Coursera/UCI HAR Dataset/train/subject_train.txt")
  
  ytrain2 <- merge(ytrain,activity,by = "V1")
  
  ## merge the test data sets
  ## extract only the metrics that end with mean() or std()
  testoutput <- cbind(xtest[,1],xtest[,2],xtest[,3],xtest[,4],xtest[,5],xtest[,6],
                      xtest[,41],xtest[,42],xtest[,43], xtest[,44], xtest[,45], xtest[,46],
                      xtest[,81], xtest[,82], xtest[,83], xtest[,84], xtest[,85], xtest[,86],
                      xtest[,121], xtest[,122], xtest[,123], xtest[,124], xtest[,125], xtest[,126],
                      xtest[,161], xtest[,162], xtest[,163], xtest[,164], xtest[,165], xtest[,166],
                      xtest[,201], xtest[,202], 
                      xtest[,214], xtest[,215], 
                      xtest[,227], xtest[,228],
                      xtest[,240], xtest[,241],
                      xtest[,253], xtest[,254],
                      xtest[,266], xtest[,267], xtest[,268], xtest[,269], xtest[,270], xtest[,271],
                      xtest[,345], xtest[,346], xtest[,347], xtest[,348], xtest[,349], xtest[,350],
                      xtest[,424], xtest[,425], xtest[,426], xtest[,427], xtest[,428], xtest[,429],
                      xtest[,503], xtest[,504],
                      xtest[,516], xtest[,517],
                      xtest[,529], xtest[,530],
                      xtest[,542], xtest[,543],
                      ytest2[,1],
                      subjecttest[,1],
                      "Test")
  ## merge the train data sets
  ## extract only the metrics that end with mean() or std()
  trainoutput <- cbind(xtrain[,1],xtrain[,2],xtrain[,3],xtrain[,4],xtrain[,5],xtrain[,6],
                       xtrain[,41],xtrain[,42],xtrain[,43], xtrain[,44], xtrain[,45], xtrain[,46],
                       xtrain[,81], xtrain[,82], xtrain[,83], xtrain[,84], xtrain[,85], xtrain[,86],
                       xtrain[,121], xtrain[,122], xtrain[,123], xtrain[,124], xtrain[,125], xtrain[,126],
                       xtrain[,161], xtrain[,162], xtrain[,163], xtrain[,164], xtrain[,165], xtrain[,166],
                       xtrain[,201], xtrain[,202], 
                       xtrain[,214], xtrain[,215], 
                       xtrain[,227], xtrain[,228],
                       xtrain[,240], xtrain[,241],
                       xtrain[,253], xtrain[,254],
                       xtrain[,266], xtrain[,267], xtrain[,268], xtrain[,269], xtrain[,270], xtrain[,271],
                       xtrain[,345], xtrain[,346], xtrain[,347], xtrain[,348], xtrain[,349], xtrain[,350],
                       xtrain[,424], xtrain[,425], xtrain[,426], xtrain[,427], xtrain[,428], xtrain[,429],
                       xtrain[,503], xtrain[,504],
                       xtrain[,516], xtrain[,517],
                       xtrain[,529], xtrain[,530],
                       xtrain[,542], xtrain[,543],
                       ytrain2[,1],
                       subjecttrain[,1],
                       "Train")
  ## rename columns from the test data set
  colnames(testoutput) <- c(
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
    "V1",
    "subject",
    "source"
  )
  
  ## rename columns from the train data set
  colnames(trainoutput) <- c(
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
  )
  
  ## append the test and train data sets
  
  finaloutput <- rbind(testoutput, trainoutput)
  
  ## add the activity labels
  finaloutput2 <- merge(finaloutput,activity,by="V1" )
  
  library(data.table)
  
  finaloutput3 <- as.data.table(finaloutput2)
  
  ## convert the metric fields to a numeric data type
  finaloutput3 <- transform(finaloutput3,
                            time_BodyAcc_mean_X = as.numeric(finaloutput[,1]),
                            time_BodyAcc_mean_Y = as.numeric(finaloutput[,2]),
                            time_BodyAcc_mean_Z = as.numeric(finaloutput[,3]),
                            time_BodyAcc_stdev_X = as.numeric(finaloutput[,4]),
                            time_BodyAcc_stdev_Y = as.numeric(finaloutput[,5]),
                            time_BodyAcc_stdev_Z = as.numeric(finaloutput[,6]),
                            time_GravityAcc_mean_X = as.numeric(finaloutput[,7]),
                            time_GravityAcc_mean_Y = as.numeric(finaloutput[,8]),
                            time_GravityAcc_mean_Z = as.numeric(finaloutput[,9]),
                            time_GravityAcc_stdev_X = as.numeric(finaloutput[,10]),
                            time_GravityAcc_stdev_Y = as.numeric(finaloutput[,11]),
                            time_GravityAcc_stdev_Z = as.numeric(finaloutput[,12]),
                            time_BodyAccJerk_mean_X = as.numeric(finaloutput[,13]),
                            time_BodyAccJerk_mean_Y = as.numeric(finaloutput[,14]),
                            time_BodyAccJerk_mean_Z = as.numeric(finaloutput[,15]),
                            time_BodyAccJerk_stdev_X = as.numeric(finaloutput[,16]),
                            time_BodyAccJerk_stdev_Y = as.numeric(finaloutput[,17]),
                            time_BodyAccJerk_stdev_Z = as.numeric(finaloutput[,18]),
                            time_BodyGyro_mean_X = as.numeric(finaloutput[,19]),
                            time_BodyGyro_mean_Y = as.numeric(finaloutput[,20]),
                            time_BodyGyro_mean_Z = as.numeric(finaloutput[,21]),
                            time_BodyGyro_stdev_X = as.numeric(finaloutput[,22]),
                            time_BodyGyro_stdev_Y = as.numeric(finaloutput[,23]),
                            time_BodyGyro_stdev_Z = as.numeric(finaloutput[,24]),
                            time_BodyGyroJerk_mean_X = as.numeric(finaloutput[,25]),
                            time_BodyGyroJerk_mean_Y = as.numeric(finaloutput[,26]),
                            time_BodyGyroJerk_mean_Z = as.numeric(finaloutput[,27]),
                            time_BodyGyroJerk_stdev_X = as.numeric(finaloutput[,28]),
                            time_BodyGyroJerk_stdev_Y = as.numeric(finaloutput[,29]),
                            time_BodyGyroJerk_stdev_Z = as.numeric(finaloutput[,30]),
                            time_BodyAccMag_mean = as.numeric(finaloutput[,31]),
                            time_BodyAccMag_stdev = as.numeric(finaloutput[,32]),
                            time_GravityAccMag_mean = as.numeric(finaloutput[,33]),
                            time_GravityAccMag_stdev = as.numeric(finaloutput[,34]),
                            time_BodyAccJerkMag_mean = as.numeric(finaloutput[,35]),
                            time_BodyAccJerkMag_stdev = as.numeric(finaloutput[,36]),
                            time_BodyGyroMag_mean = as.numeric(finaloutput[,37]),
                            time_BodyGyroMag_stdev = as.numeric(finaloutput[,38]),
                            time_BodyGyroJerkMag_mean = as.numeric(finaloutput[,39]),
                            time_BodyGyroJerkMag_stdev = as.numeric(finaloutput[,40]),
                            frequency_BodyAcc_mean_X = as.numeric(finaloutput[,41]),
                            frequency_BodyAcc_mean_Y = as.numeric(finaloutput[,42]),
                            frequency_BodyAcc_mean_Z = as.numeric(finaloutput[,43]),
                            frequency_BodyAcc_stdev_X = as.numeric(finaloutput[,44]),
                            frequency_BodyAcc_stdev_Y = as.numeric(finaloutput[,45]),
                            frequency_BodyAcc_stdev_Z = as.numeric(finaloutput[,46]),
                            frequency_BodyAccJerk_mean_X = as.numeric(finaloutput[,47]),
                            frequency_BodyAccJerk_mean_Y = as.numeric(finaloutput[,48]),
                            frequency_BodyAccJerk_mean_Z = as.numeric(finaloutput[,49]),
                            frequency_BodyAccJerk_stdev_X = as.numeric(finaloutput[,50]),
                            frequency_BodyAccJerk_stdev_Y = as.numeric(finaloutput[,51]),
                            frequency_BodyAccJerk_stdev_Z = as.numeric(finaloutput[,52]),
                            frequency_BodyGyro_mean_X = as.numeric(finaloutput[,53]),
                            frequency_BodyGyro_mean_Y = as.numeric(finaloutput[,54]),
                            frequency_BodyGyro_mean_Z = as.numeric(finaloutput[,55]),
                            frequency_BodyGyro_stdev_X = as.numeric(finaloutput[,56]),
                            frequency_BodyGyro_stdev_Y = as.numeric(finaloutput[,57]),
                            frequency_BodyGyro_stdev_Z = as.numeric(finaloutput[,58]),
                            frequency_BodyAccMag_mean = as.numeric(finaloutput[,59]),
                            frequency_BodyAccMag_stdev = as.numeric(finaloutput[,60]),
                            frequency_BodyBodyAccJerkMag_mean = as.numeric(finaloutput[,61]),
                            frequency_BodyBodyAccJerkMag_stdev = as.numeric(finaloutput[,62]),
                            frequency_BodyBodyGyroMag_mean= as.numeric(finaloutput[,63]),
                            frequency_BodyBodyGyroMag_stdev= as.numeric(finaloutput[,64]),
                            frequency_BodyBodyGyroJerkMag_mean = as.numeric(finaloutput[,65]),
                            frequency_BodyBodyGyroJerkMag_stdev = as.numeric(finaloutput[,66])
  )
  
  
  library(plyr)
  
  ## summarize the metrics (mean) by activity and subject
  summaryoutput <- ddply(finaloutput3, c("activity", "subject"), summarize, 
                         time_BodyAcc_mean_X = mean(as.numeric(time_BodyAcc_mean_X), na.rm=TRUE), 
                         time_BodyAcc_mean_Y = mean(as.numeric(time_BodyAcc_mean_Y), na.rm=TRUE),
                         time_BodyAcc_mean_Z = mean(as.numeric(time_BodyAcc_mean_Z), na.rm=TRUE),
                         time_BodyAcc_stdev_X = mean(as.numeric(time_BodyAcc_stdev_X), na.rm=TRUE),
                         time_BodyAcc_stdev_Y= mean(as.numeric(time_BodyAcc_stdev_Y), na.rm=TRUE),
                         time_BodyAcc_stdev_Z= mean(as.numeric(time_BodyAcc_stdev_Z), na.rm=TRUE),
                         time_GravityAcc_mean_X = mean(as.numeric(time_GravityAcc_mean_X), na.rm=TRUE),
                         time_GravityAcc_mean_Y = mean(as.numeric(time_GravityAcc_mean_Y), na.rm=TRUE),
                         time_GravityAcc_mean_Z= mean(as.numeric(time_GravityAcc_mean_Z), na.rm=TRUE),
                         time_GravityAcc_stdev_X = mean(as.numeric(time_GravityAcc_stdev_X), na.rm=TRUE),
                         time_GravityAcc_stdev_Y= mean(as.numeric(time_GravityAcc_stdev_Y), na.rm=TRUE),
                         time_GravityAcc_stdev_Z= mean(as.numeric(time_GravityAcc_stdev_Z), na.rm=TRUE),
                         time_BodyAccJerk_mean_X= mean(as.numeric(time_BodyAccJerk_mean_X), na.rm=TRUE),
                         time_BodyAccJerk_mean_Y= mean(as.numeric(time_BodyAccJerk_mean_Y), na.rm=TRUE),
                         time_BodyAccJerk_mean_Y= mean(as.numeric(time_BodyAccJerk_mean_Y), na.rm=TRUE),
                         time_BodyAccJerk_mean_Z= mean(as.numeric(time_BodyAccJerk_mean_Z), na.rm=TRUE),
                         time_BodyAccJerk_stdev_X= mean(as.numeric(time_BodyAccJerk_stdev_X), na.rm=TRUE),
                         time_BodyAccJerk_stdev_Y= mean(as.numeric(time_BodyAccJerk_stdev_Y), na.rm=TRUE),
                         time_BodyAccJerk_stdev_Z= mean(as.numeric(time_BodyAccJerk_stdev_Z), na.rm=TRUE),
                         time_BodyGyro_mean_X= mean(as.numeric(time_BodyGyro_mean_X), na.rm=TRUE),
                         time_BodyGyro_mean_Y= mean(as.numeric(time_BodyGyro_mean_Y), na.rm=TRUE),
                         time_BodyGyro_mean_Z= mean(as.numeric(time_BodyGyro_mean_Z), na.rm=TRUE),
                         time_BodyGyro_stdev_X= mean(as.numeric(time_BodyGyro_stdev_X), na.rm=TRUE),
                         time_BodyGyro_stdev_Y= mean(as.numeric(time_BodyGyro_stdev_Y), na.rm=TRUE),
                         time_BodyGyro_stdev_Z= mean(as.numeric(time_BodyGyro_stdev_Z), na.rm=TRUE),
                         time_BodyGyroJerk_mean_X= mean(as.numeric(time_BodyGyroJerk_mean_X), na.rm=TRUE),
                         time_BodyGyroJerk_mean_Y= mean(as.numeric(time_BodyGyroJerk_mean_Y), na.rm=TRUE),
                         time_BodyGyroJerk_mean_Z= mean(as.numeric(time_BodyGyroJerk_mean_Z), na.rm=TRUE),
                         time_BodyGyroJerk_stdev_X= mean(as.numeric(time_BodyGyroJerk_stdev_X), na.rm=TRUE),
                         time_BodyGyroJerk_stdev_Y= mean(as.numeric(time_BodyGyroJerk_stdev_Y), na.rm=TRUE),
                         time_BodyGyroJerk_stdev_Z= mean(as.numeric(time_BodyGyroJerk_stdev_Z), na.rm=TRUE),
                         time_BodyAccMag_mean= mean(as.numeric(time_BodyAccMag_mean), na.rm=TRUE),
                         time_BodyAccMag_stdev= mean(as.numeric(time_BodyAccMag_stdev), na.rm=TRUE),
                         time_GravityAccMag_mean= mean(as.numeric(time_GravityAccMag_mean), na.rm=TRUE),
                         time_GravityAccMag_stdev= mean(as.numeric(time_GravityAccMag_stdev), na.rm=TRUE),
                         time_BodyAccJerkMag_mean= mean(as.numeric(time_BodyAccJerkMag_mean), na.rm=TRUE),
                         time_BodyAccJerkMag_stdev= mean(as.numeric(time_BodyAccJerkMag_stdev), na.rm=TRUE),
                         time_BodyGyroMag_mean= mean(as.numeric(time_BodyGyroMag_mean), na.rm=TRUE),
                         time_BodyGyroMag_stdev= mean(as.numeric(time_BodyGyroMag_stdev), na.rm=TRUE),
                         time_BodyGyroJerkMag_mean= mean(as.numeric(time_BodyGyroJerkMag_mean), na.rm=TRUE),
                         time_BodyGyroJerkMag_stdev= mean(as.numeric(time_BodyGyroJerkMag_stdev), na.rm=TRUE),
                         frequency_BodyAcc_mean_X= mean(as.numeric(frequency_BodyAcc_mean_X), na.rm=TRUE),
                         frequency_BodyAcc_mean_Y= mean(as.numeric(frequency_BodyAcc_mean_Y), na.rm=TRUE),
                         frequency_BodyAcc_mean_Z= mean(as.numeric(frequency_BodyAcc_mean_Z), na.rm=TRUE),
                         frequency_BodyAcc_stdev_X= mean(as.numeric(frequency_BodyAcc_stdev_X), na.rm=TRUE),
                         frequency_BodyAcc_stdev_Y= mean(as.numeric(frequency_BodyAcc_stdev_Y), na.rm=TRUE),
                         frequency_BodyAcc_stdev_Z= mean(as.numeric(frequency_BodyAcc_stdev_Z), na.rm=TRUE),
                         frequency_BodyAccJerk_mean_X= mean(as.numeric(frequency_BodyAccJerk_mean_X), na.rm=TRUE),
                         frequency_BodyAccJerk_mean_Y= mean(as.numeric(frequency_BodyAccJerk_mean_Y), na.rm=TRUE),
                         frequency_BodyAccJerk_mean_Z= mean(as.numeric(frequency_BodyAccJerk_mean_Z), na.rm=TRUE),
                         frequency_BodyAccJerk_stdev_X= mean(as.numeric(frequency_BodyAccJerk_stdev_X), na.rm=TRUE),
                         frequency_BodyAccJerk_stdev_Y= mean(as.numeric(frequency_BodyAccJerk_stdev_Y), na.rm=TRUE),
                         frequency_BodyAccJerk_stdev_Z= mean(as.numeric(frequency_BodyAccJerk_stdev_Z), na.rm=TRUE),
                         frequency_BodyGyro_mean_X= mean(as.numeric(frequency_BodyGyro_mean_X), na.rm=TRUE),
                         frequency_BodyGyro_mean_Y= mean(as.numeric(frequency_BodyGyro_mean_Y), na.rm=TRUE),
                         frequency_BodyGyro_mean_Z= mean(as.numeric(frequency_BodyGyro_mean_Z), na.rm=TRUE),
                         frequency_BodyGyro_stdev_X= mean(as.numeric(frequency_BodyGyro_stdev_X), na.rm=TRUE),
                         frequency_BodyGyro_stdev_Y= mean(as.numeric(frequency_BodyGyro_stdev_Y), na.rm=TRUE),
                         frequency_BodyGyro_stdev_Z= mean(as.numeric(frequency_BodyGyro_stdev_Z), na.rm=TRUE),
                         frequency_BodyAccMag_mean= mean(as.numeric(frequency_BodyAccMag_mean), na.rm=TRUE),
                         frequency_BodyAccMag_stdev= mean(as.numeric(frequency_BodyAccMag_stdev), na.rm=TRUE),
                         frequency_BodyBodyAccJerkMag_mean= mean(as.numeric(frequency_BodyBodyAccJerkMag_mean), na.rm=TRUE),
                         frequency_BodyBodyAccJerkMag_stdev= mean(as.numeric(frequency_BodyBodyAccJerkMag_stdev), na.rm=TRUE),
                         frequency_BodyBodyGyroMag_mean= mean(as.numeric(frequency_BodyBodyGyroMag_mean), na.rm=TRUE),
                         frequency_BodyBodyGyroMag_stdev= mean(as.numeric(frequency_BodyBodyGyroMag_stdev), na.rm=TRUE),
                         frequency_BodyBodyGyroJerkMag_mean= mean(as.numeric(frequency_BodyBodyGyroJerkMag_mean), na.rm=TRUE),
                         frequency_BodyBodyGyroJerkMag_stdev= mean(as.numeric(frequency_BodyBodyGyroJerkMag_stdev), na.rm=TRUE)
                         
  )
 
  write.table(summaryoutput, "run_analysis.txt", row.name=FALSE)
  
}
