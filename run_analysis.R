# STEP 1  import data

## read labels and features
activity_labels <- read.table(file="activity_labels.txt", header=FALSE, sep=" ")
str(activity_labels)
dim(activity_labels)
head(activity_labels)

features <- read.table(file="features.txt", header =FALSE, sep=" ")
dim(features)
head(features)

## import test data
X_test <- read.table(file="./test/X_test.txt", header=FALSE, sep="")
y_test <- read.table(file="./test/y_test.txt", header = FALSE, sep=" ")                   
subject_test <- read.table(file="./test/subject_test.txt", header = FALSE, sep=" ") 

dim(X_test)
head(X_test)
tail(X_test)

dim(y_test)
head(y_test)
tail(y_test)

dim(subject_test)
head(subject_test)
tail(subject_test)

## read train data
X_train <- read.table(file="./train/X_train.txt", header=FALSE, sep="" )
y_train <- read.table(file="./train/y_train.txt", header = FALSE, sep=" ")                   
subject_train <- read.table(file="./train/subject_train.txt", header = FALSE, sep=" ") 

dim(X_train)
head(X_train)
tail(X_train)

dim(y_train)
dim(subject_train)


## PART 2 Merge the training and the test sets to create one data set
test <- cbind(subject_test, y_test, X_test)
dim(test)

train <- cbind(subject_train, y_train, X_train)
dim(train)

dat <- rbind(test,train)
dim(dat)

## Appropriately label the data set with descriptive variable names
names1 <- c("id", "activity")
names2 <- features$V2
names <- append(as.character(names1), as.character(names2))
names
names(dat) <- names
head(dat, n=1)

## PART 4 Extract only the measurements on the mean and standard deviation for each measurement
grep("^id$|^activity$|mean()|std()", names, value=TRUE)
select <- grep("^id$|^activity$|mean()|std()", names, value=TRUE)
select

subset <- dat[,select]
dim(subset)

## PART 5 Uses descriptive activity names to name the activities in the data set
table(subset$activity)
subset$activity <- sapply(subset$activity, 
                          function(x){
                           x <- activity_labels[x,2]
                          })
table(subset$activity)

##  Appropriately labels the data set with descriptive variable names.
names(subset)
names(subset) <- gsub("-", ".", names(subset))
names(subset) <- gsub("\\(", "", names(subset))
names(subset) <- gsub("\\)", "", names(subset))
names(subset) <- sub("^t", "time", names(subset))
names(subset) <- sub("^f", "freq", names(subset))
names(subset)
head(subset)

# PART6 From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
library(dplyr)
final <- subset %>%
        group_by(id, activity) %>%
        summarize_each(funs(mean))
dim(final)
write.table(final, file = "expo_courseproject.txt",row.names=FALSE) 
