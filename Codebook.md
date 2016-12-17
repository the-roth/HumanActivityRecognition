## Codebook

### Human Activity Recognition Using Smartphones Dataset (Version 1.0)

The data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on the 14th December 2016. The following was taken from the contained README.txt file.

* Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
* Smartlab - Non Linear Complex Systems Laboratory
* DITEN - Università degli Studi di Genova.
* Via Opera Pia 11A, I-16145, Genoa, Italy.
* activityrecognition@smartlab.ws
* www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:

*Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* Activity and subject labels of the person (1 - 30) conducting the activity.
* Only the variables out of the 561 contained that involve either the mean or the standard deviation.

Variables are either in the frequency domain, and involve movements in the X, Y or Z (up) direction of the subject doing the activity, which is self explained in each variable name. Below are the variables.

 [1] "Subject"                                                            
 [2] "Activity"                                                           
 [3] "TimeDomain.BodyAcceleration.Mean.X"                                 
 [4] "TimeDomain.BodyAcceleration.Mean.Y"                                 
 [5] "TimeDomain.BodyAcceleration.Mean.Z"                                 
 [6] "TimeDomain.BodyAcceleration.StandardDeviation.X"                    
 [7] "TimeDomain.BodyAcceleration.StandardDeviation.Y"                    
 [8] "TimeDomain.BodyAcceleration.StandardDeviation.Z"                    
 [9] "TimeDomain.GravityAcceleration.Mean.X"                              
[10] "TimeDomain.GravityAcceleration.Mean.Y"                              
[11] "TimeDomain.GravityAcceleration.Mean.Z"                              
[12] "TimeDomain.GravityAcceleration.StandardDeviation.X"                 
[13] "TimeDomain.GravityAcceleration.StandardDeviation.Y"                 
[14] "TimeDomain.GravityAcceleration.StandardDeviation.Z"                 
[15] "TimeDomain.BodyAccelerationJerk.Mean.X"                             
[16] "TimeDomain.BodyAccelerationJerk.Mean.Y"                             
[17] "TimeDomain.BodyAccelerationJerk.Mean.Z"                             
[18] "TimeDomain.BodyAccelerationJerk.StandardDeviation.X"                
[19] "TimeDomain.BodyAccelerationJerk.StandardDeviation.Y"                
[20] "TimeDomain.BodyAccelerationJerk.StandardDeviation.Z"                
[21] "TimeDomain.BodyGyro.Mean.X"                                         
[22] "TimeDomain.BodyGyro.Mean.Y"                                         
[23] "TimeDomain.BodyGyro.Mean.Z"                                         
[24] "TimeDomain.BodyGyro.StandardDeviation.X"                            
[25] "TimeDomain.BodyGyro.StandardDeviation.Y"                            
[26] "TimeDomain.BodyGyro.StandardDeviation.Z"                            
[27] "TimeDomain.BodyGyroJerk.Mean.X"                                     
[28] "TimeDomain.BodyGyroJerk.Mean.Y"                                     
[29] "TimeDomain.BodyGyroJerk.Mean.Z"                                     
[30] "TimeDomain.BodyGyroJerk.StandardDeviation.X"                        
[31] "TimeDomain.BodyGyroJerk.StandardDeviation.Y"                        
[32] "TimeDomain.BodyGyroJerk.StandardDeviation.Z"                        
[33] "TimeDomain.BodyAccelerationMagnitude.Mean"                          
[34] "TimeDomain.BodyAccelerationMagnitude.StandardDeviation"             
[35] "TimeDomain.GravityAccelerationMagnitude.Mean"                       
[36] "TimeDomain.GravityAccelerationMagnitude.StandardDeviation"          
[37] "TimeDomain.BodyAccelerationJerkMagnitude.Mean"                      
[38] "TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation"         
[39] "TimeDomain.BodyGyroMagnitude.Mean"                                  
[40] "TimeDomain.BodyGyroMagnitude.StandardDeviation"                     
[41] "TimeDomain.BodyGyroJerkMagnitude.Mean"                              
[42] "TimeDomain.BodyGyroJerkMagnitude.StandardDeviation"                 
[43] "FrequencyDomain.BodyAcceleration.Mean.X"                            
[44] "FrequencyDomain.BodyAcceleration.Mean.Y"                            
[45] "FrequencyDomain.BodyAcceleration.Mean.Z"                            
[46] "FrequencyDomain.BodyAcceleration.StandardDeviation.X"               
[47] "FrequencyDomain.BodyAcceleration.StandardDeviation.Y"               
[48] "FrequencyDomain.BodyAcceleration.StandardDeviation.Z"               
[49] "FrequencyDomain.BodyAccelerationJerk.Mean.X"                        
[50] "FrequencyDomain.BodyAccelerationJerk.Mean.Y"                        
[51] "FrequencyDomain.BodyAccelerationJerk.Mean.Z"                        
[52] "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X"           
[53] "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y"           
[54] "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z"           
[55] "FrequencyDomain.BodyGyro.Mean.X"                                    
[56] "FrequencyDomain.BodyGyro.Mean.Y"                                    
[57] "FrequencyDomain.BodyGyro.Mean.Z"                                    
[58] "FrequencyDomain.BodyGyro.StandardDeviation.X"                       
[59] "FrequencyDomain.BodyGyro.StandardDeviation.Y"                       
[60] "FrequencyDomain.BodyGyro.StandardDeviation.Z"                       
[61] "FrequencyDomain.BodyAccelerationMagnitude.Mean"                     
[62] "FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation"        
[63] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean"             
[64] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation"      
[65] "FrequencyDomain.BodyBodyGyroMagnitude.Mean"                         
[66] "FrequencyDomain.BodyBodyGyroMagnitude.StandardDeviation"            
[67] "FrequencyDomain.BodyBodyGyroJerkMagnitude.Mean"                     
[68] "FrequencyDomain.BodyBodyGyroJerkMagnitude.StandardDeviation"