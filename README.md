# Healthcare-Insurance-Analysis
The objective of this project is to predict patients’ healthcare costs and to identify factors contributing to this prediction.

Problem statement:
A significant public health concern is the rising cost of healthcare. Therefore, it's crucial
to be able to predict future costs and gain a solid understanding of their causes. The
insurance industry must also take this analysis seriously. This analysis may be used by
healthcare insurance providers to make a variety of strategic and tactical decisions.

Objective:
The objective of this project is to predict patients’ healthcare costs and to identify factors
contributing to this prediction. It will also be useful to learn the interdependencies of
different factors and comprehend the significance of various tools at various stages of
the healthcare cost prediction process.

Project Task 1: Data Science

1. Collate the files so that all the information is in one place
2. Check for missing values in the dataset
3. Find the percentage of rows that have trivial value (for example, ?), and delete such rows if they do
not contain significant information
4. Use the necessary transformation methods to deal with the nominal and ordinal categorical
variables in the dataset
5. The dataset has State ID, which has around 16 states. All states are not represented in equal
proportions in the data. Creating dummy variables for all regions may also result in too many
insignificant predictors. Nevertheless, only R1011, R1012, and R1013 are worth investigating
further. Design a suitable strategy to create dummy variables with these restraints.
6. The variable NumberOfMajorSurgeries also appears to have string values. Apply a suitable method
to clean up this variable.
Age appears to be a significant factor in this analysis. Calculate the patients' ages based on their
dates of birth.
8. The gender of the patient may be an important factor in determining the cost of hospitalization.
The salutations in a beneficiary's name can be used to determine their gender. Make a new field
for the beneficiary's gender.
9. You should also visualize the distribution of costs using a histogram, box and whisker plot, and
swarm plot.
10. State how the distribution is different across gender and tiers of hospitals
11. Create a radar chart to showcase the median hospitalization cost for each tier of hospitals
12. Create a frequency table and a stacked bar chart to visualize the count of people in the different
tiers of cities and hospitals
13. Test the following null hypotheses:
a. The average hospitalization costs for the three types of hospitals are not significantly different.
b. The average hospitalization costs for the three types of cities are not significantly different.
c. The average hospitalization cost for smokers is not significantly different from the average cost
for nonsmokers.
d. Smoking and heart issues are independent.

Project Task: Machine learning

1. Examine the correlation between predictors to identify highly correlated predictors
Hint: Use a heatmap to visualize this
2. Develop a regression model Linear or Ridge. Evaluate the model with k-fold cross validation.
Also, ensure that you apply all the following suggestions:
• Implement the stratified 5-fold cross validation technique for both model building and
validation
• Utilize effective standardization techniques and hyperparameter tuning
• Incorporate sklearn-pipelines to streamline the workflow
• Apply appropriate regularization techniques to address the bias-variance trade-off
• Create five folds in the data, and introduce a variable to identify the folds
• Develop Gradient Boost model and determine the variable importance scores, and identify
the redundant variables
3. Case scenario:
Estimate the cost of hospitalization for Christopher, Ms. Jayna (Date of
birth 12/28/1988; height 170 cm; and weight 85 kgs). She lives with her partner and two children
in a tier-1 city, and her state’s State ID is R1011. She was found to be nondiabetic (HbA1c = 5.8).
She smokes but is otherwise healthy. She has had no transplants or major surgeries. Her father
died of lung cancer. Hospitalization costs will be estimated using tier-1 hospitals.
4. Find the predicted hospitalization cost using the best models

Project Task: SQL

1. To gain a comprehensive understanding of the factors influencing hospitalization costs
a. Merge the two tables by first identifying the columns in the data tables that will help you
in merging
b. In both tables, add a Primary Key constraint for these columns
Hint: You can remove duplicates and null values from the column and then use ALTER TABLE to add a
Primary Key constraint.
2. Retrieve information about people who are diabetic and have heart problems with their average
age, the average number of dependent children, average BMI, and average hospitalization costs
3. Find the average hospitalization cost for each hospital tier and each city level
4. Determine the number of people who have had major surgery with a history of cancer
5. Determine the number of tier-1 hospitals in each state

Project Task: Tableau
1. Create a dashboard in Tableau by selecting the appropriate chart types and business metrics

