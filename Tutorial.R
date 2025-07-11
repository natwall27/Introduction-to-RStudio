
###########################
# Homework Exploring Data #
###########################
# Please type your name here: 
###########################################
# Import the data frame family_college #
###########################################
url_family_college <- "https://www.openintro.org/data/csv/family_college.csv"
family_college <- read.csv(url_family_college)
# Task 1: Where does the data come from?
# Go to the family_college website:
# https://www.openintro.org/data/index.php?data=family_college
# Under the 'Source' section click on the link to the
# article related to the data:
# https://eric.ed.gov/?id=ED460660

# 1a: Describe the population of interest for the data.
# Your answer:

# 1b: Estimate the population size.
# Your answer: 

# Task 2: Identify the Data.
# Run the command below, or click on family_college under
# 'Data' in the 'Global Environment.'
View(family_college)
# The data as a spreadsheet should appear in a tab next to this
# document.

# 2a: How many cases are in the data frame family_college?
# Your answer: 

# 2b: Describe what a 'case' means in this data set.
# Your answer: 

# 2c: How many variables are collect from each case?
# Your answer: 

# Task 3: Identify the variables.
# Run the command below to identify the names of the variables.
names(family_college)

# 3a: Which variable(s) (if any) are categorical?
# Your answer: 

# 3b: Which variable(s) (if any) are numerical?
# Your answer: 

# Task 4: Identify the levels of categorical variables.
# Run the command below to organize the values of
# 'teen' into a table.
table(family_college$teen)

# 4a: What are the levels of 'teen'?
# How many cases are in each level?
# Your answer:

# Hint:
table(family_college$parents)

# 4b: What are the levels of 'parents'?
# How many cases are in each level?
# Your answer: 

# Let's save each table as an object:
teen_table <- table(family_college$teen)
parents_table <- table(family_college$parents)

# Now, let's create a data display representing the
# frequency of each level as a rectangular area.
# This is called a bar plot.
# Run the command below:
barplot(teen_table)

# 4c: How does what you see in the bar plot about teens
# relate to what you see in the table about teens?
# Your answer:

# Run the command below:
barplot(parents_table)

# 4d: How does what you see in the bar plot about parents
# relate to what you see in the table about parents?
# Your answer: 

# Task 5: Compare the two categorical variables.
# Run the command below to create a contingency table
# of the variables 'teen' and 'parents'.
table(family_college$teen, family_college$parents)

# Consider the chance experiment of randomly selecting
# a case from the survey.

# 5a: Use the contingency table to calculate the probability
# of selecting a teen who attended college AND their
# parent has a degree?
# Your calculations:

# Your answer:

# 5b: Use the contingency table to calculate the probability
# of selecting a teen who attended college GIVEN their
# parent has a degree?
# Your calculations:

# Your answer:

# 5c: Use the contingency table to calculate the probability
# of selecting a teen who did NOT attend college GIVEN their
# parent has a degree?
# Your calculations:

# Your answer:
# Task 6: Create a data display comparing two categorical variables.
# Compare the two categorical variables with a comparison bar plot.
tab <- table(family_college$teen, family_college$parents)
barplot(tab)
# Note: The order of regions on the bars align with the
# order of the levels on the contingency table.
# The lightest grey region is the level 'not'; i.e. the
# parent did not earn a degree.
# The darkest grey region is the level 'degree'; i.e. the
# parent earned a degree.

# 6a: Based on the comparison bar plot, does there seem to be
# an association between parents having a degree and their
# teenagers attending college?
# Please explain your reasoning.
# Your answer:

# Let's make a mosaic plot, as well.
tab_2 <- table(family_college$parent,family_college$teen)
mosaicplot(tab_2)

# 6b: Based on the mosaic plot, does there seem to be
# an association between parents having a degree and their
# teenagers attending college?
# Please explain your reasoning.
# Your answer:
################################################
# End:                                         #
# Please upload your work as a .txt in Canvas. #
################################################

