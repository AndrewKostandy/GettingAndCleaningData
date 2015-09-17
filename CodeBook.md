# CodeBook.md

## Outline
1. Credits & Original Study Design Elements **Relevant** to tidy_data
2. The tidy_data data set

## Credits & Original Study Design Elements Relevant to tidy_data <br />

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

The set of variables that were estimated from these signals that are relevant to tidy_data are:<br /> 

mean(): Mean value<br />
std(): Standard deviation<br />

#### Note: <br />

- Features are normalized and bounded within [-1,1]. <br />

For more information about the original dataset contact: activityrecognition@smartlab.ws <br />

#### License: <br />

Use of this dataset in publications must be acknowledged by referencing the following publication [1] <br />

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 <br />

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited. <br />

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012. <br /><br />

## The tidy_data data set <br /><br />

#### The tidy_data data set is created by a list of steps expalined in the README.md file. That script basically merges the test and training data sets and extracts only the measurements on the mean and standard deviation for each measurement and then gives you the average of each variable for each activity and each subject. <br />

#### I chose to select all columns containing mean() or std() which includes for each of the the x,y,z axis. I chose these because those are the main measurements. I also selected the subject and activity columns obviously. <br />

#### For each record in tidy_data it is provided: <br />
1. activity: Shows the activity label of what the subject was doing. <br />
  a. WALKING <br />
  b. WALKING_UPSTAIRS <br />
  c. WALKING_DOWNSTAIRS <br />
  d. SITTING <br />
  e. STANDING <br />
  f. LAYING <br /><br />
2. An identifier of the subject who carried out the experiment. <br />
  a. Range: subject number is between 1 to 30. <br /><br />

3.The average of the mean and standard deviation measurements for each activity and each subject  <br />

The list of these variables is below. 
As the original features are normalized and bounded within [-1,1], the range of each variable below is also within [-1,1] <br />

tBodyAcc_mean_X_Avg<br />
tBodyAcc_mean_Y_Avg          
tBodyAcc_mean_Z_Avg<br />

tGravityAcc_mean_X_Avg       
tGravityAcc_mean_Y_Avg       
tGravityAcc_mean_Z_Avg<br />

tBodyAccJerk_mean_X_Avg      
tBodyAccJerk_mean_Y_Avg     
tBodyAccJerk_mean_Z_Avg<br />

tBodyGyro_mean_X_Avg        
tBodyGyro_mean_Y_Avg<br />
tBodyGyro_mean_Z_Avg<br />

tBodyGyroJerk_mean_X_Avg<br /> 
tBodyGyroJerk_mean_Y_Avg<br /> 
tBodyGyroJerk_mean_Z_Avg<br /> 

tBodyAccMag_mean_Avg<br />
tGravityAccMag_mean_Avg<br />
tBodyAccJerkMag_mean_Avg     
tBodyGyroMag_mean_Avg<br />
tBodyGyroJerkMag_mean_Avg<br /> 

fBodyAcc_mean_X_Avg<br /> 
fBodyAcc_mean_Y_Avg          
fBodyAcc_mean_Z_Avg<br /> 

fBodyAccJerk_mean_X_Avg<br /> 
fBodyAccJerk_mean_Y_Avg<br /> 
fBodyAccJerk_mean_Z_Avg<br />    

fBodyGyro_mean_X_Avg<br /> 
fBodyGyro_mean_Y_Avg      
fBodyGyro_mean_Z_Avg<br />  

fBodyAccMag_mean_Avg        
fBodyBodyAccJerkMag_mean_Avg<br />
fBodyBodyGyroMag_mean_Avg<br />
fBodyBodyGyroJerkMag_mean_Avg<br />

tBodyAcc_std_X_Avg     
tBodyAcc_std_Y_Avg<br /> 
tBodyAcc_std_Z_Avg<br />  

tGravityAcc_std_X_Avg<br /> 
tGravityAcc_std_Y_Avg    
tGravityAcc_std_Z_Avg<br />

tBodyAccJerk_std_X_Avg<br /> 
tBodyAccJerk_std_Y_Avg    
tBodyAccJerk_std_Z_Avg<br />   

tBodyGyro_std_X_Avg  
tBodyGyro_std_Y_Avg      
tBodyGyro_std_Z_Avg<br />     

tBodyGyroJerk_std_X_Avg    
tBodyGyroJerk_std_Y_Avg<br /> 
tBodyGyroJerk_std_Z_Avg<br />  

tBodyAccMag_std_Avg  
tGravityAccMag_std_Avg  
tBodyAccJerkMag_std_Avg<br />
tBodyGyroMag_std_Avg    
tBodyGyroJerkMag_std_Avg<br />  

fBodyAcc_std_X_Avg       
fBodyAcc_std_Y_Avg    
fBodyAcc_std_Z_Avg<br />    

fBodyAccJerk_std_X_Avg<br /> 
fBodyAccJerk_std_Y_Avg    
fBodyAccJerk_std_Z_Avg<br /> 

fBodyGyro_std_X_Avg     
fBodyGyro_std_Y_Avg    
fBodyGyro_std_Z_Avg<br />    

fBodyAccMag_std_Avg<br /> 
fBodyBodyAccJerkMag_std_Avg  
fBodyBodyGyroMag_std_Avg    
fBodyBodyGyroJerkMag_std_Avg<br /><br />
