# Lets first create a database

CREATE DATABASE EmployeeData;

# Use database

USE EmployeeData;

select * from Employees;
select count(*) from Employees;

------------#DATA ANALYSIS---------------

#Q1: Write an SQL query to select all columns for employees who have stayed with the company.

SELECT * FROM employees WHERE Attrition = 'Stayed';

#Q2 :How would you retrieve all female employees over the age of 40?
# Filter Based on Conditions:


SELECT * FROM employees WHERE Gender = 'Female' AND Age > 40;

#Q3 :Write a query to find the average monthly income of employees grouped by job role.
#Aggregation and Grouping:

SELECT Job_Role, AVG(Monthly_Income) AS Avg_Income FROM employees GROUP BY Job_Role;


#Q4 :How can you count the number of employees in each marital status category?
#Counting Records

SELECT Marital_Status, COUNT(*) AS Count FROM employees GROUP BY Marital_Status;

#Q5 :Write a query to display employees' IDs and monthly income in descending order of income.
#Sorting Data

SELECT Employee_ID, Monthly_Income FROM employees ORDER BY Monthly_Income DESC;

#Q6 : How would you find employees who work remotely and have a high job satisfaction rating?
#Join and Filter:

SELECT * FROM employees WHERE Remote_Work = 'Yes' AND Job_Satisfaction = 'High';

#Q7 : Write a query to find employees who have null values in the "Number of Dependents" column.
#Finding Nulls:

SELECT * FROM employees WHERE Number_of_Dependents IS NULL;

#Q8 :How would you calculate the tenure-to-age ratio for all employees?
#Mathematical Operations:

SELECT Employee_ID, (Years_at_Company / Age) AS Tenure_Age_Ratio FROM employees;

#Q9 :Write a query to find employees who have the highest monthly income in their job role.
#Subqueries:

SELECT * FROM employees WHERE Monthly_Income = (SELECT MAX(Monthly_Income) FROM employees);

#Q10 :How would you find job roles that have an average monthly income above $5,000?
#Grouping with HAVING:

SELECT Job_Role, AVG(Monthly_Income) AS Avg_Income FROM employees GROUP BY Job_Role HAVING AVG(Monthly_Income) > 5000;

#Q11 :Write a query to create a column that categorizes employees as 'Senior' if they are older than 50 and 'Junior' otherwise.
#Conditional Logic (CASE Statement):

SELECT Employee_ID, Age, 
       CASE 
           WHEN Age > 50 THEN 'Senior' 
           ELSE 'Junior' 
       END AS Age_Category
FROM employees;

#Q12 :Identify the Top 5 Employees with the Longest Commute and Lowest Job Satisfaction

SELECT Employee_ID, Distance_from_Home, Job_Satisfaction
FROM Employees
WHERE Job_Satisfaction IN ('Low', 'Poor')
ORDER BY Distance_from_Home DESC
LIMIT 5;

#Q13 :How can you find the employees who have worked at the company for more than 10 years but are younger than 35?
#Date and Time Calculations:

SELECT * FROM employees WHERE Years_at_Company > 10 AND Age < 35;

#Q14 :Find the Average Distance from Home for Employees by Job Satisfaction and Attrition:

SELECT Job_Satisfaction, Attrition, AVG(Distance_from_Home) AS Avg_Distance
FROM Employees
GROUP BY Job_Satisfaction, Attrition
ORDER BY Avg_Distance DESC;


#Q15 : How would you write a query to find the total number of promotions given to employees grouped by their job levels?
#Combination of Aggregations:

SELECT Job_Level, SUM(Number_of_Promotions) AS Total_Promotions FROM employees GROUP BY Job_Level;

#Q16 : Select Employees Who Are Likely to Be Promoted (Based on High Performance and Job Satisfaction)

SELECT *
FROM Employees
WHERE Performance_Rating IN ('High', 'Very High')
AND Job_Satisfaction IN ('High', 'Very High')
AND Number_of_Promotions < 2;

#Q17 :Find Employees Who Have Stayed the Longest at the Company by Job Level:

SELECT Job_Level, Employee_ID, MAX(Company_Tenure) AS Max_Tenure
FROM Employees
GROUP BY Job_Level, Employee_ID
ORDER BY Max_Tenure DESC;

#Q18 :Calculate the Percentage of Employees Working Overtime Based on Job Role:

SELECT Job_Role,
       (SUM(CASE WHEN Overtime = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS Overtime_Percentage
FROM Employees
GROUP BY Job_Role
ORDER BY Overtime_Percentage DESC;

#19 :Find the average monthly income of employees in each job role where the average is greater than the overall company average.

SELECT 
    Job_Role,
    AVG(Monthly_Income) AS Avg_Income
FROM 
    employees
GROUP BY 
    Job_Role
HAVING 
    AVG(Monthly_Income) > (SELECT AVG(Monthly_Income) FROM employees);
    

#20 :Calculate the Average Monthly Income by Job Role
#CTEs

WITH AvgIncomeByRole AS (
    SELECT 
        Job_Role,
        AVG(Monthly_Income) AS Avg_Monthly_Income
    FROM 
        employees
    GROUP BY 
        Job_Role
)
SELECT 
    Job_Role,
    Avg_Monthly_Income
FROM 
    AvgIncomeByRole
WHERE 
    Avg_Monthly_Income > 5000;

#21 :Identify Employees with High Job Satisfaction and Performance

WITH HighPerformers AS (
    SELECT 
        Employee_ID,
        Job_Satisfaction,
        Performance_Rating,
        Job_Role
    FROM 
        employees
    WHERE 
        Job_Satisfaction = 'High' AND Performance_Rating = 'Outstanding'
)
SELECT 
    Employee_ID,
    Job_Role,
    Job_Satisfaction,
    Performance_Rating
FROM 
    HighPerformers;



--------------------Thank You------------------------



