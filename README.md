## Instructions

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

### Review criteria 

* The submitted data set is tidy.
* The Github repo contains the required scripts.
* GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
* The README that explains the analysis files is clear and understandable.
* The work submitted for this project is the work of the student who submitted it.

### Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:

* A tidy data set as described below
* A link to a Github repository with your script for performing the analysis,
* A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
* You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


The data for the project can be downloaded at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The generated R script, run_analysis.R does the following:


## run_analysis.R

This code does the following steps:

1. Download and unzip the required data to the UCI HAR Dataset directory, if the directory doesn't exist.
2. Creates and merges the training and the test sets to create one data set.
3. Uses grep to extract only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in steps 4-5, creates a second, independent tidy data set called TidyAverageData.txt with the average of each variable for each activity and each subject.
