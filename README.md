The run_analysis.R contains one function called "dataProcess". It downloads the original zip file, processes the raw data and outputs the summary. Steps are described below:

1. Reading useful datasets under "train" and "test" folders, including datasets regarding to variable, activity and subject.

2. Mean variables and standard deviation variables are extracted from X_train and X_test.

3. Merge train and test datasets for each category using "rbind":
	3.1 Merge variable dataset (X_train and X_test);
	3.2 Merge activity dataset (y_train and y_test);
	3.3 Merge subject dataset (subject_train and subject_test).	
	
4. Activity dataset was labeled by number originally. It is then transformed to descriptive names. It acts as a factor with 6 levels(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

5. Merge variable,activity,subject using "cbind" to present a completed data frame.

6. Assign appropriate variable names according to lowerCamel case. Punctuations such as '.','()','-','_' are removed. Unmeaningful repetitive words in naming are removed, such as "fBodyBodyGyroJerkMagStd" is transformed to "fBodyGyroJerkMagStd".

7. Output the dataset individually in.csv and .txt format. 

8. To summary the dataset, get the average of each variable group by each subject and each activity. The dimension of the summary data frame is 180 * 68 

9. Output the summary individually in.csv and .txt format.

10. The submitted data summary are named "./data/UCI HAR Dataset/dataSummary.txt". The first row represents the column names.
