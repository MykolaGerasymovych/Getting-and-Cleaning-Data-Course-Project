# Getting-and-Cleaning-Data-Course-Project

## Step 1 (lines 1:3): loading of the packages necessary for the analysis
We will need dplyr package to easily change table names and arrange tables.

## Step 2 (lines 5:21): loading data sets necessary for the analysis
Using "read.table" command we get Samsung's data sets such as activity_labels, features, subject_test, x_test, y_test, subject_train, x_train, y_train. They contain necessary numeric and label data.

## Step 3 (lines 23:33): merging data sets, variable names and labels
We merge subject and activity labels with measurements using cbind() command. Next, we merge  test and train sets with command rbind(). Using commands cbind(), names() and make.names() we make appropriate vector of variable names for merged data set. Then we sort combined data table by subjects.

## Step 4 (lines 34:39): getting mean and sandard deviation variables from the combined data set
The command grep() gets all the variable names with "mean" and "std". Function expression "names(combined_data) %in% right_variables" generates logical vector with TRUEs for variable names with "mean" or "std". Then we get a table with desired variables.

## Step 5 (lines 41:52): calculation of means of each activity measurement for each subject
To make data set clean we need shorten it in the way that each activity of each subject appears only once in a table describing mean of all measurements. In order to do this we use nested for loops that for each subject's each activity creates a vector with column means and adds it to final tidy data frame. The latter appears to be a data frame with 180 observations (6 activities per 30 subjects) and 81 variables.

## Step 6 (lines 55:60): adding variable names and transforming label numbers into meaningful activity labels
We add approproate variable names by using names() command and shift activity numbers to words using for loop and gsub() function.

## Step 7 (lines 62:63): viewing final data set
We view final tidy data using view() command
