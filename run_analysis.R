run_analysis <- function () {
  
## save text file names and locations into variables
  file1 <- "./test/X_test.txt"
  file2 <- "./test/y_test.txt"
  file3<- "./train/X_train.txt"
  file4 <- "./train/y_train.txt"
  file5 <- "activity_labels.txt"
  file6 <- "features.txt"
  file7 <- "./test/subject_test.txt"
  file8 <- "./train/subject_train.txt"
  
## read table contents into variables  
  x.test <<- read.table(file1)
  y.test <<- read.table(file2)
  x.train <<- read.table(file3)
  y.train <<- read.table(file4)
  act.labels <<- read.table(file5)
  features <<- read.table(file6)
  subjects.test <<- read.table(file7)
  subjects.train <<- read.table(file8)
  
## Change column names for train and test based on labels second column
  colnames(x.test) <<- features[1:561,2]
  colnames(x.train) <<- features[1:561,2]
  

  
  
## merge Train data with act.labels
  y.test.labels <<- merge(y.test,act.labels)
  y.train.labels <<- merge(y.train,act.labels)
  
  
## create combined test data
  test <<- cbind(y.test.labels[,2],x.test)
  colnames(test)[1] <<- "Activity"
  test <<- cbind(subjects.test,test)
  colnames(test)[1] <<- "Subjects"
  
## create combine train data
  train <<- cbind(y.train.labels[,2],x.train)

## label first column Activity
  colnames(train)[1] <<- "Activity"

## combine subjects list with train data
  train <<- cbind(subjects.train,train)

## label first column Subjects
  colnames(train)[1] <<- "Subjects"

## filter out first two columns and any columns with mean() and std()
  new.test <<- test[grep("Subjects|Activity|mean()|std()", colnames(test))]
  new.train <<- train[grep("Subjects|Activity|mean()|std()",colnames(train))]
  
## merge all data together  
  ans <<- merge(new.test,new.train,all=TRUE)
  
## create tidy data set with column mean values on variables 
  tidy_ans <<- ddply(ans, .(Subjects, Activity), colwise(mean))
  

  
  
  
  
}



