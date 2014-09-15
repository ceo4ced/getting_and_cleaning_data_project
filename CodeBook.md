Getting and Cleaning Data Project Code Book

-created  file1 to file8 variables to hold all the text files X_test.txt, y_test.txt, X_train.txt, y_train.txt, activity_labels.txt, features.txt, subject_test.txt, and subject_train.txt respectively.

-read all the files using read.table and saved in new variables x.test, y.test, x.train, y.train, act.labels, features, subjects.test, subjects.train

-changed column names in x.test and x.train from features in the second column

-merged activity labels with the y.test and y.train tables

-combined the y.test with activity labels to the x.test table and created “test”

-labeled first column Activity

-combined the subject id numbers from subject.test with the test and saved as “test”

-labeled Subject column in test data frame

-combined the y.train with activity labels to the x.train table and created “train”

-labeled first column Activity

-combined the subject id numbers from subject.train with the train and saved as “train"

-labeled Subject column in train data frame

-pull out Subject, Activity, all mean() and std() columns for test and train

-merge data into one data frame

-create tidy report with the mean for all variables.

NOTE:  Per discussion and system resources, I did not merge the Inertia folder datasets for train nor test.  The data was not used anyways.