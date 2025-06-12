# Diabetes Data Analysis using SQL

## Project Overview
This project involves analyzing a diabetes dataset using SQL queries.  
The main goal is to perform descriptive and categorical analyses to understand factors influencing diabetes outcomes.

## Dataset
- The dataset contains medical records of patients including features such as BMI, Glucose, Blood Pressure, Age, Pregnancies, and Diabetes Outcome.
- Original data file: `data/diabetes.csv`

## Project Tasks
The analysis is divided into the following tasks:

1. **Descriptive Analysis**  
   Calculate average BMI, Glucose, Blood Pressure, and age range.

2. **Outcome-based Averages**  
   Analyze average BMI, Glucose, Blood Pressure grouped by diabetes outcome.

3. **Age Group Analysis**  
   Categorize patients into age groups (Under 30, 30-50, Over 50) and calculate diabetes prevalence.

4. **Pregnancies and Outcome**  
   Compute average number of pregnancies by diabetes outcome.

5. **Glucose Level Categorization**  
   Classify glucose levels into Low, Medium, and High, then calculate diabetes prevalence in each group.

6. **High BMI and Glucose Cases**  
   Count patients with BMI > 40 and Glucose > 140 by outcome.

## How to Use
1. Create a new database (e.g., `Diabetes`) in your SQL environment.  
2. Import the dataset (`data/diabetes.csv`) into a table named `diabetes`.  
3. Execute the SQL queries in `queries.sql` file sequentially to reproduce the analysis results.

## Project Structure
