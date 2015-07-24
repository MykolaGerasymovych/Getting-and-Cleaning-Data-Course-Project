# load necessary packages

# Load test and train data sets into R
# !Folder "getdata-projectfiles-UCI HAR Dataset" with project data 
# should be in the working directory!
setwd("getdata-projectfiles-UCI HAR Dataset")
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
features <- read.table("features.txt", stringsAsFactors = FALSE)

setwd("test")
subject_test <- read.table(dir()[2])
x_test <- read.table(dir()[3])
y_test <- read.table(dir()[4])

setwd("..")
setwd("train")
subject_train <- read.table(dir()[2])
x_train <- read.table(dir()[3])
y_train <- read.table(dir()[4])

# merge test and train data sets into combined data set,
# add features, labels and subjects to test and train data sets,
# add variable names, sort obs by subjects
x_test <- cbind(subject_test, y_test, x_test)
x_train <- cbind(subject_train, y_train, x_train)
combined_data <- rbind(x_train, x_test)

feature_names <- t(features[ , 2])
variables_names <- cbind("subject", "activity", feature_names)
names(combined_data) <- make.names(variables_names, unique=TRUE)

combined_data <- arrange(combined_data, subject)

# extract means and standard deviations for all the measurements
mean_variables <- grep("mean", names(combined_data), value = TRUE)
std_variables <- grep("std", names(combined_data), value = TRUE)
right_variables <- c("subject", "activity", mean_variables, std_variables)
right_variables <- names(combined_data) %in% right_variables
tidy_gross_data <- combined_data[right_variables]

# calculate means of each activity measurement for each subject
tidy_data <- data.frame(matrix(nrow = 0, ncol = 81))
names(tidy_data) <- names(tidy_gross_data)
for (n in c(1:30)) {
        subject <- tidy_gross_data[which(tidy_gross_data$subject == n), ]
        for (a in c(1:6)) {
                activity <- subject[subject$activity == a, ]
                means <- colMeans(activity[ , 3:(ncol(activity))])
                means <- c(n, a, means)
                tidy_data <- rbind(tidy_data, means)
        }
}

# add variable names,
# transform label numbers into meaningful activity labels
names(tidy_data) <- names(tidy_gross_data)
for (a in 1:6) {
        tidy_data$activity <- gsub(as.character(a), activity_labels[a, 2], tidy_data$activity)
}

# view the final tidy data set
View(tidy_data)
