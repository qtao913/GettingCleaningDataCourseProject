Activity
==========
There are 6 activities monitored in this experiment. The "activity" column contains one of the following values:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

Subject
==========
The experiment was carried out by 30 different people. They weared the equipment and their activities and data were recorded. The "subject" column contains a numeric value ranging from 1 to 30.


Feature Selection (copy and modified from original features_info.txt and features.txt)
======================================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The processed dataset only focused on mean and std variables. Original variable names are transformed according to lowerCamel case. Punctuations such as '.','()','-','_' are removed. Unmeaningful repetitive words in naming are removed, such as "fBodyBodyGyroJerkMagStd" is transformed to "fBodyGyroJerkMagStd".

Variable name for each column is shown below:
 [1] "tBodyAccMeanX"        "tBodyAccMeanY"        "tBodyAccMeanZ"        "tBodyAccStdX"         "tBodyAccStdY"        
 [6] "tBodyAccStdZ"         "tGravityAccMeanX"     "tGravityAccMeanY"     "tGravityAccMeanZ"     "tGravityAccStdX"     
[11] "tGravityAccStdY"      "tGravityAccStdZ"      "tBodyAccJerkMeanX"    "tBodyAccJerkMeanY"    "tBodyAccJerkMeanZ"   
[16] "tBodyAccJerkStdX"     "tBodyAccJerkStdY"     "tBodyAccJerkStdZ"     "tBodyGyroMeanX"       "tBodyGyroMeanY"      
[21] "tBodyGyroMeanZ"       "tBodyGyroStdX"        "tBodyGyroStdY"        "tBodyGyroStdZ"        "tBodyGyroJerkMeanX"  
[26] "tBodyGyroJerkMeanY"   "tBodyGyroJerkMeanZ"   "tBodyGyroJerkStdX"    "tBodyGyroJerkStdY"    "tBodyGyroJerkStdZ"   
[31] "tBodyAccMagMean"      "tBodyAccMagStd"       "tGravityAccMagMean"   "tGravityAccMagStd"    "tBodyAccJerkMagMean" 
[36] "tBodyAccJerkMagStd"   "tBodyGyroMagMean"     "tBodyGyroMagStd"      "tBodyGyroJerkMagMean" "tBodyGyroJerkMagStd" 
[41] "fBodyAccMeanX"        "fBodyAccMeanY"        "fBodyAccMeanZ"        "fBodyAccStdX"         "fBodyAccStdY"        
[46] "fBodyAccStdZ"         "fBodyAccJerkMeanX"    "fBodyAccJerkMeanY"    "fBodyAccJerkMeanZ"    "fBodyAccJerkStdX"    
[51] "fBodyAccJerkStdY"     "fBodyAccJerkStdZ"     "fBodyGyroMeanX"       "fBodyGyroMeanY"       "fBodyGyroMeanZ"      
[56] "fBodyGyroStdX"        "fBodyGyroStdY"        "fBodyGyroStdZ"        "fBodyAccMagMean"      "fBodyAccMagStd"      
[61] "fBodyAccJerkMagMean"  "fBodyAccJerkMagStd"   "fBodyGyroMagMean"     "fBodyGyroMagStd"      "fBodyGyroJerkMagMean"
[66] "fBodyGyroJerkMagStd" 