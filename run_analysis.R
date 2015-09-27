## The R script that reads the input data, manipulates it and generates the tidy_data.txt file as output.

## As per the project instructions, running this script requires the Samsung Data Set Folder
## called UCI HAR Dataset to be located inside your working directory and to have it's internal
## folder structure and file names unchanged.

## Running this script requires you to have the dplyr package installed.

run_analysis<-function(){
        
        library(dplyr)

        ## Reading Features from features.txt
        features<-file.path("UCI HAR Dataset","features.txt")
        features_data<-data.frame(read.table(features))
        
        # Reading Activity Labels from activity_labels.txt
        activity_labels<-file.path("UCI HAR Dataset","activity_labels.txt")
        activity_data<-data.frame(read.table(activity_labels))
        activity_data[,2]<-as.character(activity_data[,2])
        activity_data<-activity_data[,2]
        
        ## Reading All Test Data & then merge them at the final step.
        
        ##Reading subject_test Data. Renaming Column Name to subject.
        subject_test<-file.path("UCI HAR Dataset","test","subject_test.txt")
        subject_test_data<-data.frame(read.table(subject_test))
        colnames(subject_test_data)<-"subject"
        
        ## Reading y_test data which contains activity numbers. Renaming Column Name to activity.
        y_test<-file.path("UCI HAR Dataset","test","y_test.txt")
        y_test_data<-data.frame(read.table(y_test))
        colnames(y_test_data)<-"activity"
        
        ## Reading X_test data. Renaming Column Names to values read earlier from features.txt
        X_test<-file.path("UCI HAR Dataset","test","X_test.txt")
        X_test_data<-data.frame(read.table(X_test))
        colnames(X_test_data)<-features_data[,2]
        
        ## Merging all the test data together.
        alltestdata<-cbind(subject_test_data,y_test_data, X_test_data)
        
        ## Reading All Train Data & then merge them at the final step.
        
        ## Reading subject_train Data. Renaming Column Name to subject.
        subject_train<-file.path("UCI HAR Dataset","train","subject_train.txt")
        subject_train_data<-data.frame(read.table(subject_train))
        colnames(subject_train_data)<-"subject"
        
        ## Reading y_train data which contains activity numbers. Renaming Column Name to activity.
        y_train<-file.path("UCI HAR Dataset","train","y_train.txt")
        y_train_data<-data.frame(read.table(y_train))
        colnames(y_train_data)<-"activity"
        
        ## Reading X_train data. Renaming Column Names to values read earlier from features.txt
        X_train<-file.path("UCI HAR Dataset","train","X_train.txt")
        X_train_data<-data.frame(read.table(X_train))
        colnames(X_train_data)<-features_data[,2]
        
        ## Merging all the train data together.
        alltraindata<-cbind(subject_train_data,y_train_data, X_train_data)
        
        ## Merging alltestdata and alltraindata into alldata.
        alldata<-rbind(alltestdata,alltraindata)
        
        ## Removing Duplicate Column names.
        alldata<-alldata[,!duplicated(colnames(alldata))]
        
        ## Extracting only the measurements on the mean and standard deviation for each measurement.
        ## I chose to select all columns containing mean() or std() in addition to the subject and activity columns.
        alldata_mean_std<-alldata%>%select(subject,activity,contains("mean()"),contains("std()"))
        
        ## Clearly labeling activities variables replacing the numbers 1-6 with the respective activity name
        ## which was read earlier from activity_labels.txt
        for (i in 1:6){
                alldata_mean_std$activity[alldata_mean_std$activity==i]<-activity_data[i]
        }
        
        ## Creating a new data set tidy_data with the average of each variable for each activity and each subject.
        tidy_data<-alldata_mean_std %>% group_by(activity,subject) %>% summarise_each(funs(mean))
        
        ## Making Column Names lower case and more descriptive showing that they are averages and removing
        ## brackets and dashes from the Column Names that change to dots when writing to and then reading from file.
        colnames(tidy_data) <- tolower(colnames(tidy_data))
        colnames(tidy_data) <- gsub("-", "", colnames(tidy_data))
        colnames(tidy_data) <- sub("\\(\\)", "", colnames(tidy_data))
        colnames(tidy_data)[-(1:2)] <- colnames(tidy_data)[-(1:2)] %>% paste0("avg")
        
        ## Writing the tidy_data data set into a file tidy_data.txt  
        ## This file is written into your working directory.
        write.table(tidy_data,file="tidy_data.txt",row.names = FALSE)
}
run_analysis()