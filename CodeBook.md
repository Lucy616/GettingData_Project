##  Codebook of Human Activity Recognition Summary Using Smartphones Dataset 

==================================================================
# Data:
==================================================================
This dataset contains summary information of the Human Activity Recognition Using Smartphones Dataset (Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory) 

For the oringinal dataset, The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acce leration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. Features are normalized and bounded within[-1,1].These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In this dataset, we merge the training and test sets. Data were grouped by subjects and activates, and the mean for each subject-activity is presented. There are 180 observations in this dataset (30 subject * 6 activities = 180 observations in total). 
In this dataset, there are 81 variables
- id		    An identifier of the subject who carried out the experiment.  Its range is from 1 to 30. 
- activity	Activity name. 	Descriptive activity names were applied to name the activities in the data set. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- 79  estimated time and frequency domain features variables: 
  - This dataset only present the mean value (mean) and standard deviation (std) estimated of the featur signials.The name of the variable was edited to avoid special characters like -, '_', (). And prefixed `t' and `f' in the orignial dataset were changed to `time' and `freq' respectively. The unit of mean value of time domain is second. 
        timeBodyAcc.mean.X               
        timeBodyAcc.mean.Y            
        timeBodyAcc.mean.Z              
        timeBodyAcc.std.X              
        timeBodyAcc.std.Y             
        timeBodyAcc.std.Z               
        timeGravityAcc.mean.X          
        timeGravityAcc.mean.Y 
        timeGravityAcc.mean.Z
        timeGravityAcc.std.X           
        timeGravityAcc.std.Y            
        timeGravityAcc.std.Z            
        timeBodyAccJerk.mean.X          
        timeBodyAccJerk.mean.Y          
        timeBodyAccJerk.mean.Z          
        timeBodyAccJerk.std.X           
        timeBodyAccJerk.std.Y         
        timeBodyAccJerk.std.Z           
        timeBodyGyro.mean.X             
        timeBodyGyro.mean.Y             
        timeBodyGyro.mean.Z             
        timeBodyGyro.std.X              
        timeBodyGyro.std.Y             
        timeBodyGyro.std.Z              
        timeBodyGyroJerk.mean.X        
        timeBodyGyroJerk.mean.Y       
        timeBodyGyroJerk.mean.Z        
        timeBodyGyroJerk.std.X         
        timeBodyGyroJerk.std.Y          
        timeBodyGyroJerk.std.Z          
        timeBodyAccMag.mean             
        timeBodyAccMag.std              
        timeGravityAccMag.mean          
        timeGravityAccMag.std           
        timeBodyAccJerkMag.mean         
        timeBodyAccJerkMag.std          
        timeBodyGyroMag.mean            
        timeBodyGyroMag.std             
        timeBodyGyroJerkMag.mean       
        timeBodyGyroJerkMag.std         
        freqBodyAcc.mean.X              
        freqBodyAcc.mean.Y              
        freqBodyAcc.mean.Z              
        freqBodyAcc.std.X               
        freqBodyAcc.std.Y               
        freqBodyAcc.std.Z               
        freqBodyAcc.meanFreq.X          
        freqBodyAcc.meanFreq.Y         
        freqBodyAcc.meanFreq.Z          
        freqBodyAccJerk.mean.X          
        freqBodyAccJerk.mean.Y          
        freqBodyAccJerk.mean.Z          
        freqBodyAccJerk.std.X           
        freqBodyAccJerk.std.Y           
        freqBodyAccJerk.std.Z           
        freqBodyAccJerk.meanFreq.X      
        freqBodyAccJerk.meanFreq.Y      
        freqBodyAccJerk.meanFreq.Z      
        freqBodyGyro.mean.X             
        freqBodyGyro.mean.Y             
        freqBodyGyro.mean.Z             
        freqBodyGyro.std.X             
        freqBodyGyro.std.Y              
        freqBodyGyro.std.Z             
        freqBodyGyro.meanFreq.X         
        freqBodyGyro.meanFreq.Y         
        freqBodyGyro.meanFreq.Z         
        freqBodyAccMag.mean             
        freqBodyAccMag.std              
        freqBodyAccMag.meanFreq         
        freqBodyBodyAccJerkMag.mean     
        freqBodyBodyAccJerkMag.std      
        freqBodyBodyAccJerkMag.meanFreq 
        freqBodyBodyGyroMag.mean        
        freqBodyBodyGyroMag.std         
        freqBodyBodyGyroMag.meanFreq    
        freqBodyBodyGyroJerkMag.mean    
        freqBodyBodyGyroJerkMag.std     
        freqBodyBodyGyroJerkMag.meanFreq
 





==================================================================
# License:
==================================================================
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.








