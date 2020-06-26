# unzipping the  file
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
# Reading the train data
X_Train<- read.table("UCI HAR Dataset/train/X_train.txt")
Y_Train<- read.table("UCI HAR Dataset/train/Y_train.txt")
Subject_train <-read.table("UCI HAR Dataset/train/subject_train.txt")
#Reading the test data
X_Test<- read.table("UCI HAR Dataset/test/X_test.txt")
Y_Test<- read.table("UCI HAR Dataset/test/Y_test.txt")
Subject_test <-read.table("UCI HAR Dataset/test/subject_test.txt")
#Merged dataset
X<-rbind(X_Train, X_Test)
Y<-rbind(Y_Train, Y_Test)
Subject<-rbind(Subject_test, Subject_train)
dim(Subject)
# Extracting the feature and activity
features<-read.table("UCI HAR Dataset/features.txt")
activity<-read.table("UCI HAR Dataset/activity_labels.txt")
#now we get the features with mean and std deviations
index<-grep("mean\\(\\)|std\\(\\)", features[,2])
X<-X[,index]
dim(X)
#renaming the values to make it more user readable
Y[,1]<-activity[Y[,1],2]
head(Y)
#extracting names
names<-features[index,2]
#updating dataset
names(X)<-names
names(Subject)<-"SubjectID"
names(Y)<-"Activity"
ProcessedData<-cbind(Subject, Y, X)
# printing 10 columns of Processed data
head(ProcessedData[,c(1:9)])
ProcessedData<-data.table(ProcessedData)
Tidy_data <- ProcessedData[, lapply(.SD, mean), by = 'SubjectID,Activity']
dim(Tidy_data) #print dimensions of tidy data
write.table(Tidy_data, file = "Tidy_data.txt", row.names = FALSE)
#First 10 rows and 6 columns in Tidy_data
head(Tidy_data[order(SubjectID)][,c(1:5), with = FALSE],10)
library(data.table)
# unzipping the  file
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
# Reading the train data
X_Train<- read.table("UCI HAR Dataset/train/X_train.txt")
Y_Train<- read.table("UCI HAR Dataset/train/Y_train.txt")
Subject_train <-read.table("UCI HAR Dataset/train/subject_train.txt")
#Reading the test data
X_Test<- read.table("UCI HAR Dataset/test/X_test.txt")
Y_Test<- read.table("UCI HAR Dataset/test/Y_test.txt")
Subject_test <-read.table("UCI HAR Dataset/test/subject_test.txt")
#Merged dataset
X<-rbind(X_Train, X_Test)
Y<-rbind(Y_Train, Y_Test)
Subject<-rbind(Subject_test, Subject_train)
dim(Subject)
# Extracting the feature and activity
features<-read.table("UCI HAR Dataset/features.txt")
activity<-read.table("UCI HAR Dataset/activity_labels.txt")
#now we get the features with mean and std deviations
index<-grep("mean\\(\\)|std\\(\\)", features[,2])
X<-X[,index]
dim(X)
#renaming the values to make it more user readable
Y[,1]<-activity[Y[,1],2]
head(Y)
#extracting names
names<-features[index,2]
#updating dataset
names(X)<-names
names(Subject)<-"SubjectID"
names(Y)<-"Activity"
ProcessedData<-cbind(Subject, Y, X)
# printing 10 columns of Processed data
head(ProcessedData[,c(1:9)])
ProcessedData<-data.table(ProcessedData)
Tidy_data <- ProcessedData[, lapply(.SD, mean), by = 'SubjectID,Activity']
dim(Tidy_data) #print dimensions of tidy data
write.table(Tidy_data, file = "Tidy_data.txt", row.names = FALSE)
#First 10 rows and 6 columns in Tidy_data
head(Tidy_data[order(SubjectID)][,c(1:5), with = FALSE],10)
# unzipping the  file
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
# Reading the train data
X_Train<- read.table("UCI HAR Dataset/train/X_train.txt")
Y_Train<- read.table("UCI HAR Dataset/train/Y_train.txt")
Subject_train <-read.table("UCI HAR Dataset/train/subject_train.txt")
#Reading the test data
X_Test<- read.table("UCI HAR Dataset/test/X_test.txt")
Y_Test<- read.table("UCI HAR Dataset/test/Y_test.txt")
Subject_test <-read.table("UCI HAR Dataset/test/subject_test.txt")
#Merged dataset
X<-rbind(X_Train, X_Test)
Y<-rbind(Y_Train, Y_Test)
Subject<-rbind(Subject_test, Subject_train)
dim(Subject)
# Extracting the feature and activity
features<-read.table("UCI HAR Dataset/features.txt")
activity<-read.table("UCI HAR Dataset/activity_labels.txt")
#now we get the features with mean and std deviations
index<-grep("mean\\(\\)|std\\(\\)", features[,2])
X<-X[,index]
dim(X)
#renaming the values to make it more user readable
Y[,1]<-activity[Y[,1],2]
head(Y)
#extracting names
names<-features[index,2]
#updating dataset
names(X)<-names
names(Subject)<-"SubjectID"
names(Y)<-"Activity"
ProcessedData<-cbind(Subject, Y, X)
# printing 10 columns of Processed data
head(ProcessedData[,c(1:9)])
ProcessedData<-data.table(ProcessedData)
Tidy_data <- ProcessedData[, lapply(.SD, mean), by = 'SubjectID,Activity']
dim(Tidy_data) #print dimensions of tidy data
write.table(Tidy_data, file = "Tidy_data.txt", row.names = FALSE)
#First 10 rows and 6 columns in Tidy_data
head(Tidy_data[order(SubjectID)][,c(1:5), with = FALSE],10)
