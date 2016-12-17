# Script to tidy a data set from the
# Human Activity Recognition Using Smartphones Dataset

# File was downloaded on 14th December 2016 from
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Place this unzipped file in your source directory and run the code from there.
# The raw data is not stored in my repository, just download it from above.

library(data.table)
library(dplyr)

if (!file.info('UCI HAR Dataset')$isdir) {
    File <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    dir.create('UCI HAR Dataset')
    download.file(File, 'UCI-HAR-dataset.zip')
    unzip('./UCI-HAR-dataset.zip')
}

# Create data tables from data
XTrain = read.table('./UCI HAR Dataset/train/X_train.txt', header = F)
YTrain = read.table('./UCI HAR Dataset/train/y_train.txt', header = F)
SubTrain = read.table('./UCI HAR Dataset/train/subject_train.txt', header = F)

XTest = read.table('./UCI HAR Dataset/test/X_test.txt', header = F)
YTest = read.table('./UCI HAR Dataset/test/y_test.txt', header = F)
SubTest = read.table('./UCI HAR Dataset/test/subject_test.txt', header = F)

features = read.table('./UCI HAR Dataset/features.txt', header = F)
activity_labels = read.table('./UCI HAR Dataset/activity_labels.txt', header = F)

# 1 - Merge training and test data sets into one data set
XData = rbind(XTrain, XTest)
YData = rbind(YTrain, YTest)
SubData = rbind(SubTrain, SubTest)

# We don't need these any more, might as well clear memory
rm(XTrain, YTrain, SubTrain, SubTest, XTest, YTest)

# 2 - Select -mean() and -std() only from features.txt
# Might as well update the names while we're here
MeanStdRows = grep('-(mean|std)\\(\\)', features$V2)
XData = XData[,MeanStdRows] # Only need the specified COLUMNS
names(XData) = features[MeanStdRows,2]

# 3 update names in Y Data set
head(YData)
YData[,1] = activity_labels[YData[,1], 2]
names(YData) = 'Activity'
summary(YData)

# 4 Label the data set with descriptive variable names
# We first need to rename the Subject name set
names(SubData) = 'Subject'
summary(SubData)

# Then, combine the data set into one
AllData = cbind(XData, YData, SubData)

# We don't need these any more, might as well clear memory
rm(XData, YData, SubData, features, MeanStdRows, activity_labels)

# Summary doesn't really describe the activities very well.
# We can change this pretty easily though
to_replace = c('^t', '^f', 'Acc',
               'std', 'mean', 'Mag', '-', '\\(\\)')
replace_str = c('TimeDomain.', 'FrequencyDomain.', 'Acceleration',
                'StandardDeviation', 'Mean',  'Magnitude','.', '')

for(i in 1:length(to_replace)){
    names(AllData) = gsub(to_replace[i], replace_str[i], names(AllData))
}

AllData$Activity = gsub('_', '.', AllData$Activity)
names(AllData)

# 5 - create a second, independent tidy data set with the average of
# each variable for each activity and each subject

AverageData = aggregate(. ~ Subject + Activity, AllData, mean)
AverageData = tbl_df(AverageData)
AverageData = arrange(AverageData, Subject, Activity)

# Store result in a .txt file!
write.table(AverageData, file = "TidyAverageData.txt",row.name=FALSE)