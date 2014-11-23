dataProcess <- function() {
	## downloading the original file from the given URL and unzip the files to folder named "data"
	url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	if(!file.exists("data")) {dir.create("data")}
	download.file(url,destfile="./data/rawdata.zip",method="curl")
	unzip(zipfile="./data/rawdata.zip", exdir ="./data/")
	
	## reading each train and test files
	trainX <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
	testX <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
	trainY <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
	testY <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
	trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
	testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")	
	
	## extracts mean and standard deviation for each measurement
	features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
	index <-grep("mean\\(\\)|std\\(\\)",features[,2])
	trainX <- trainX[,index]
	testX <- testX[,index]
	
	## merge each train and test dataset
	combineX <- rbind(trainX,testX)
	combineY <- rbind(trainY,testY)
	combineSubject <- rbind(trainSubject,testSubject)

	## replace activity dataset with descripitive activity names 
	library(plyr)
	label <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
	##combineY will has number-label and name-label in two column after join
	combineY <- join(combineY, label, by = "V1", type = "left")
	
	## merge measurements, activities, subjects
	dataset <- cbind(combineX, combineY[,2], combineSubject)
	
	## format variable names according to lowerCamel case
	featureName <- features[index,]
	featureName <- gsub("-|\\(|\\)","", featureName$V2)
	featureName <- gsub("mean","Mean", featureName)
	featureName <- gsub("std","Std", featureName)
	featureName <- gsub("(Body)+","Body", featureName)
	
	## assign meaningful column names
	featureName <- c(featureName, c("activity","subject"))
	colnames(dataset) <- featureName
	
	## output dataset
	write.csv(dataset, "./data/UCI HAR Dataset/processedData.csv",row.names = FALSE)
	variableName = colnames(dataset)
	write.table(dataset, "./data/UCI HAR Dataset/processedData.txt", row.names = FALSE, col.names = variableName)
	
	## tidy dataset
	processedDataset <- aggregate(dataset[,1:66], by=list(dataset[,68],dataset[,67]), FUN=mean, na.rm=TRUE)
	## order by subject, activity
	processedDataset <- processedDataset[order(processedDataset[,1], processedDataset[,2]),]
	## append variable names
	varName <- c(c("subject","activity"),featureName[1:66])
	colnames(processedDataset) <- varName
	write.table(processedDataset, "./data/UCI HAR Dataset/dataSummary.txt", row.names = FALSE, col.names = varName)
	write.csv(processedDataset, "./data/UCI HAR Dataset/dataSummary.csv", row.names = FALSE)
}

