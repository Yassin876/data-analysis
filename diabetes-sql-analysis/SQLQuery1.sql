-- Database Creation
CREATE DATABASE Diabetes; -- Create new database


-- Task 1: Descriptive Analysis
SELECT 
    AVG(BMI) AS avg_bmi,
    AVG(Glucose) AS avg_glucose,
    AVG(BloodPressure) AS avg_blood_pressure,
    MIN(Age) AS min_age,
    MAX(Age) AS max_age
FROM diabetes;

-- Task 2: Outcome Analysis
SELECT 
    Outcome,
    AVG(BMI) AS avg_bmi,
    AVG(Glucose) AS avg_glucose,
    AVG(BloodPressure) AS avg_blood_pressure,
    COUNT(Outcome) AS count_diabetes
FROM diabetes
GROUP BY Outcome;

-- Task 3: Age Group Analysis

SELECT 
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 50 THEN '30-50'
        ELSE 'Over 50'
    END AS age_status,
    COUNT(Outcome) AS total_count,
    SUM(Outcome) AS count_diabetes,
    ROUND(AVG(Outcome) * 100, 2) AS percentage
FROM diabetes
GROUP BY 
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 50 THEN '30-50'
        ELSE 'Over 50'
    END
ORDER BY age_status;

-- Task 4: Pregnancies by Outcome
SELECT 
    Outcome,
    AVG(Pregnancies) AS avg_pregnancies
FROM diabetes
GROUP BY Outcome;

-- Task 5: Glucose Levels Analysis
SELECT 
    CASE 
        WHEN Glucose < 70 THEN 'Low'
        WHEN Glucose BETWEEN 70 AND 140 THEN 'Medium'
        ELSE 'High'
    END AS glucose_status,
    COUNT(Outcome) AS total_count,
    SUM(Outcome) AS count_diabetes,
    ROUND(AVG(Outcome) * 100, 2) AS percentage
FROM diabetes
GROUP BY 
    CASE 
        WHEN Glucose < 70 THEN 'Low'
        WHEN Glucose BETWEEN 70 AND 140 THEN 'Medium'
        ELSE 'High'
    END
ORDER BY total_count;


-- Task 6: High BMI and Glucose Analysis

SELECT 
    Outcome,
    COUNT(BMI) AS count_high_bmi_and_glucose
FROM diabetes
WHERE BMI > 40 AND Glucose > 140
GROUP BY Outcome;
