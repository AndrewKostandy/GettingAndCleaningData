# CodeBook.md

## Outline
1. Original Credits & Study Design
2. The tidy_data data set

## Original Credits & Study Design <br />

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. <br />

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. <br />

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. <br />

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). <br />

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). <br />

These signals were used to estimate variables of the feature vector for each pattern: <br /> 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. <br />

tBodyAcc-XYZ<br />
tGravityAcc-XYZ<br />
tBodyAccJerk-XYZ<br />
tBodyGyro-XYZ<br />
tBodyGyroJerk-XYZ<br />
tBodyAccMag<br />
tGravityAccMag<br />
tBodyAccJerkMag<br />
tBodyGyroMag<br />
tBodyGyroJerkMag<br />
fBodyAcc-XYZ<br />
fBodyAccJerk-XYZ<br />
fBodyGyro-XYZ<br />
fBodyAccMag<br />
fBodyAccJerkMag<br />
fBodyGyroMag<br />
fBodyGyroJerkMag<br />

The set of variables that were estimated from these signals are:<br /> 

mean(): Mean value<br />
std(): Standard deviation<br />

#### Notes: <br />

- Features are normalized and bounded within [-1,1]. <br />

For more information about the original dataset contact: activityrecognition@smartlab.ws <br />

#### License: <br />

Use of this dataset in publications must be acknowledged by referencing the following publication [1] <br />

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 <br />

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited. <br />

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012. <br /><br />

## The tidy_data data set <br /><br />

#### The tidy_data data set is created by a list of steps expalined in the README.md file. That script basically extracts only the measurements on the mean and standard deviation for each measurement and then gives you the average of each variable for each activity and each subject. <br />

#### I chose to select all columns containing mean() or std() which includes for each of the the x,y,z axis. I chose these because those are the main measurements. I also selected the subject and activity columns obviously. <br />

#### For each record in tidy_data it is provided: <br />
1. activity: Shows the activity label of what the subject was doing. <br />
  a. WALKING <br />
  b. WALKING_UPSTAIRS <br />
  c. WALKING_DOWNSTAIRS <br />
  d. SITTING <br />
  e. STANDING <br />
  f. LAYING <br />
2. An identifier of the subject who carried out the experiment. <br />
  a. Range: subject number is between 1 to 30. <br />
3.The average of the mean and standard deviation measurements for each activity and each subject  <br />

The list of these variables is below. The range of each variable is within [-1,1] <br /><br />

tBodyAcc.mean...X<br />
tBodyAcc.mean...Y          
tBodyAcc.mean...Z<br />

tGravityAcc.mean...X       
tGravityAcc.mean...Y       
tGravityAcc.mean...Z<br />

tBodyAccJerk.mean...X      
tBodyAccJerk.mean...Y     
tBodyAccJerk.mean...Z<br />

tBodyGyro.mean...X        
tBodyGyro.mean...Y<br />
tBodyGyro.mean...Z<br />

tBodyGyroJerk.mean...X<br /> 
tBodyGyroJerk.mean...Y<br /> 
tBodyGyroJerk.mean...Z<br /><br /> 

tBodyAccMag.mean..<br />
tGravityAccMag.mean..<br />
tBodyAccJerkMag.mean..     
tBodyGyroMag.mean..<br />
tBodyGyroJerkMag.mean..<br /><br /> 

fBodyAcc.mean...X<br /> 
fBodyAcc.mean...Y          
fBodyAcc.mean...Z<br /><br /> 

fBodyAccJerk.mean...X<br /> 
fBodyAccJerk.mean...Y<br /> 
fBodyAccJerk.mean...Z<br /><br />    

fBodyGyro.mean...X<br /> 
fBodyGyro.mean...Y      
fBodyGyro.mean...Z<br /><br />  

fBodyAccMag.mean..<br />         
fBodyBodyAccJerkMag.mean..<br />
fBodyBodyGyroMag.mean..<br />  
fBodyBodyGyroJerkMag.mean..<br /><br />

tBodyAcc.std...X<br />     
tBodyAcc.std...Y<br /> 
tBodyAcc.std...Z<br /><br />  

tGravityAcc.std...X<br /> 
tGravityAcc.std...Y<br />    
tGravityAcc.std...Z<br /><br /> 

tBodyAccJerk.std...X<br /> 
tBodyAccJerk.std...Y<br />    
tBodyAccJerk.std...Z<br /><br />   

tBodyGyro.std...X<br />  
tBodyGyro.std...Y<br />      
tBodyGyro.std...Z<br /><br />     

tBodyGyroJerk.std...X<br />      
tBodyGyroJerk.std...Y<br /> 
tBodyGyroJerk.std...Z<br /><br />  

tBodyAccMag.std..<br />  
tGravityAccMag.std..<br />  
tBodyAccJerkMag.std..<br />
tBodyGyroMag.std..<br />    
tBodyGyroJerkMag.std..<br /><br />  

fBodyAcc.std...X<br />        
fBodyAcc.std...Y<br />     
fBodyAcc.std...Z<br /><br />    

fBodyAccJerk.std...X<br /> 
fBodyAccJerk.std...Y<br />     
fBodyAccJerk.std...Z<br /><br /> 

fBodyGyro.std...X<br />     
fBodyGyro.std...Y<br />     
fBodyGyro.std...Z<br /><br />    

fBodyAccMag.std..<br /> 
fBodyBodyAccJerkMag.std..<br />  
fBodyBodyGyroMag.std..<br />    
fBodyBodyGyroJerkMag.std..<br /><br />
