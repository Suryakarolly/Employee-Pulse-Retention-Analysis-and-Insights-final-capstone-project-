# Employee Pulse Retention Analysis and Insights

## Overview

This repository contains SQL queries used for analyzing employee data in the context of employee retention, performance, and job satisfaction. The goal is to extract meaningful insights from the dataset to inform HR decision-making and improve employee retention strategies.

The dataset used in this analysis contains information about employees, including demographics, job roles, performance ratings, job satisfaction, and attrition details. The analysis focuses on various aspects such as employee retention, promotions, income distribution, job satisfaction, and more.

## Repository Structure

- **SQL Queries**: The SQL scripts are organized by questions and insights derived from the employee dataset. They are designed to:
  - Select data based on various conditions (e.g., employees who stayed with the company)
  - Perform aggregations and groupings (e.g., average monthly income by job role)
  - Identify trends and correlations (e.g., employees with high job satisfaction and performance)
  - Use advanced SQL techniques like subqueries, joins, and conditional logic.
  
- **Dataset**: The dataset is available in the `dataset` folder and includes employee-related information such as:
  - Employee IDs
  - Demographics (Age, Gender, Marital Status)
  - Job-related data (Job Role, Job Level, Job Satisfaction, Performance Ratings)
  - Company tenure, promotions, attrition status, etc.

## Dataset Link

You can access the dataset for this project via the following link:

[Employee Dataset](https://github.com/Suryakarolly/Employee-Pulse-Retention-Analysis-and-Insights-final-capstone-project-/tree/main/dataset)

## SQL Queries

The following SQL queries are included to analyze and retrieve insights from the employee dataset:

1. **Q1**: Select all employees who have stayed with the company.
2. **Q2**: Retrieve all female employees over the age of 40.
3. **Q3**: Find the average monthly income of employees by job role.
4. **Q4**: Count the number of employees in each marital status category.
5. **Q5**: Display employees' IDs and monthly income in descending order.
6. **Q6**: Find employees who work remotely and have high job satisfaction.
7. **Q7**: Identify employees with null values in the "Number of Dependents" column.
8. **Q8**: Calculate the tenure-to-age ratio for all employees.
9. **Q9**: Find employees with the highest monthly income in their job role.
10. **Q10**: Identify job roles with an average monthly income above $5,000.
11. **Q11**: Categorize employees as 'Senior' or 'Junior' based on age.
12. **Q12**: Find the top 5 employees with the longest commute and lowest job satisfaction.
13. **Q13**: Identify employees who have worked for more than 10 years but are under 35.
14. **Q14**: Calculate the average distance from home for employees based on job satisfaction and attrition.
15. **Q15**: Find the total number of promotions given to employees by job level.
16. **Q16**: Select employees likely to be promoted based on high performance and job satisfaction.
17. **Q17**: Identify employees with the longest tenure at the company by job level.
18. **Q18**: Calculate the percentage of employees working overtime based on job role.
19. **Q19**: Find the average monthly income for job roles with an average above the company average.
20. **Q20**: Use CTEs to calculate the average monthly income by job role.
21. **Q21**: Identify employees with high job satisfaction and performance.

Each query is tailored to answer specific business questions related to employee retention, satisfaction, promotions, and income distribution.

## How to Run

To run the SQL queries, you need to have access to a MySQL database. Here are the steps to execute the queries:

1. **Set up your database**:
   - Create a new database: `CREATE DATABASE EmployeeData;`
   - Use the database: `USE EmployeeData;`
   - Ensure that the `employees` table exists and has the required columns (e.g., Employee_ID, Gender, Age, Job_Role, Monthly_Income, Job_Satisfaction, Attrition, etc.).

2. **Run the queries**:
   - You can run the SQL queries directly in your MySQL console or using a MySQL client (e.g., MySQL Workbench, DBeaver, or phpMyAdmin).

## Contributing

Feel free to fork this repository and submit pull requests with improvements or additional queries.

## License

This project is licensed under the MIT License.
