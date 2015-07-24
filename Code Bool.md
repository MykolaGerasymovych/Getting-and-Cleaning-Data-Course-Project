## Code Book for the project

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

|Variable name     |    definition                                                     |
|:-----------------|-------------------------------------------------------------------|
|tBodyAcc-XYZ      | time signals of body accelerometer                                |
|tGravityAcc-XYZ   | time signals of gravity accelerometer                             |
|tBodyAccJerk-XYZ  | Jerk time signals of body accelerometer                           |
|tBodyGyro-XYZ     | time signals of body gyroscope                                    |
|tBodyGyroJerk-XYZ | Jerk time signals of body gyroscope                               |
|tBodyAccMag       | magnitude of time signals of body accelerometer                   |
|tGravityAccMag    | magnitude of time signals of gravity accelerometer                |
|tBodyAccJerkMag   | magnitude of Jerk time signals of body accelerometer              |
|tBodyGyroMag      | magnitude of time signals of body gyroscope                       |
|tBodyGyroJerkMag  | magnitude of Jerk time signals of body gyroscope                  |
|fBodyAcc-XYZ      | frequency of time signals of body accelerometer                   |
|fBodyAccJerk-XYZ  | frequency of Jerk time signals of body accelerometer              |
|fBodyGyro-XYZ     | frequency of time signals of body gyroscope                       |
|fBodyAccMag       | magnitudeof frequency of time signals of body accelerometer       |
|fBodyAccJerkMag   | magnitude of frequency of Jerk time signals of body accelerometer |
|fBodyGyroMag      | magnitude of frequency of time signals of body gyroscope          |
|fBodyGyroJerkMag  | magnitude of frequency of Jerk time signals of body gyroscope     |

The set of variables that were estimated from these signals are:

|Variable name  |  definition        |
|---------------|--------------------|
|mean...XYZ     | Mean value         |
|std...XYZ      | Standard deviation |
