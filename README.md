# Employee Pulse Retention Analysis and Insights

This repository contains the analysis and insights related to employee retention, performance, and job satisfaction. The project uses a dataset containing employee demographics, job roles, performance ratings, job satisfaction, and attrition details to derive actionable insights for improving employee satisfaction and reducing turnover rates.

The analysis includes data cleaning, feature engineering, exploratory data analysis (EDA), machine learning model building, and a Power BI dashboard to visualize the insights.

## Project Overview

The primary objective of this project is to analyze the factors influencing employee retention, performance, and job satisfaction. Insights from this analysis can inform HR decision-making and improve employee retention strategies. The analysis is done using SQL for querying, Python for data cleaning and machine learning, and Power BI for visualizing key metrics.

## Project Structure

The project is organized into the following key components:

1. **SQL Queries**: SQL scripts for querying the employee dataset to answer various business questions related to employee retention, job satisfaction, promotions, and income distribution.
2. **Data**: The dataset contains employee information such as demographics, job satisfaction, performance ratings, and attrition.
3. **Jupyter Notebooks (Python)**: Python-based analysis for data cleaning, feature engineering, exploratory data analysis, and machine learning modeling.
4. **Power BI Dashboard**: Interactive Power BI dashboard to visualize employee demographics, job satisfaction, career growth, and company insights.

## Key Sections

### 1. SQL Queries
The SQL scripts are designed to:
- Select data based on various conditions (e.g., employees who stayed with the company).
- Perform aggregations and groupings (e.g., average monthly income by job role).
- Identify trends and correlations (e.g., employees with high job satisfaction and performance).
- Use advanced SQL techniques like subqueries, joins, and conditional logic.

### 2. Data
The dataset contains attributes and performance metrics for each employee, including:
- **Demographics**: Age, gender, marital status, etc.
- **Job-related data**: Job role, job level, job satisfaction, performance ratings, income, promotions, etc.
- **Employee behavior**: Overtime, work-life balance, company tenure, attrition status, etc.

### 3. Jupyter Notebooks (Python)
This section includes the code for:
- **Data Loading and Cleaning**: Handling missing values, encoding categorical variables, and transforming features.
- **Exploratory Data Analysis (EDA)**: Identifying trends and patterns using visualizations.
- **Feature Engineering**: Creating new features to enhance model performance.
- **Machine Learning**: Building predictive models like Logistic Regression, KNN, Decision Trees, Naive Bayes, and Random Forest for employee retention prediction.

### 4. Power BI Dashboard
The Power BI dashboard consists of two main pages:
1. **Employee Demographics & Job Satisfaction**: Visualizing the relationship between demographics and job satisfaction.
2. **Career Growth & Company Insights**: Exploring career progression, performance ratings, and retention analysis.

## Technologies Used

- **Python**: For data preprocessing, analysis, and machine learning.
- **Power BI**: For creating interactive dashboards.
- **SQL**: For querying and extracting insights from the database.
- **Jupyter Notebook**: For documenting analysis and building models.

## Setup Instructions

### 1. Cloning the Repository
To begin working with the project, clone this repository to your local machine:
```bash
git clone https://github.com/Suryakarolly/Employee-Pulse-Retention-Analysis-and-Insights-final-capstone-project.git
```

### 2. Running SQL Queries
The SQL queries can be executed in MySQL Workbench or any other MySQL client. Ensure that the `EmployeeData` database is set up and that it includes the required tables and columns.

### 3. Running the Jupyter Notebook
To run the Jupyter notebooks:
1. Clone the repository.
2. Navigate to the notebook folder and open it:
```bash
cd Jupyter\ Notebook\ (Python)
jupyter notebook
```

3. Open the notebook file and run the cells to replicate the analysis.

### 4. Viewing the Power BI Dashboard
1. Clone the repository and navigate to the Power BI dashboard folder:
```bash
git clone https://github.com/Suryakarolly/Employee-Pulse-Retention-Analysis-and-Insights-final-capstone-project-/tree/main/powerBI%20dashboard
```
2. Open the `Employee_Pulse_Retention_Analysis.pbix` file in Power BI Desktop to view and interact with the dashboard.

## Results and Insights

- **Employee Retention**: Key predictors of employee attrition and trends in employee retention.
- **Employee Satisfaction**: Insights into factors affecting job satisfaction based on demographics and job roles.
- **Career Growth**: Performance evaluation of employees in terms of promotions, income, and career progression.

## Future Improvements

- **Predictive Analytics**: Integrate machine learning models for real-time employee attrition prediction.
- **Employee Feedback Integration**: Incorporate sentiment analysis from surveys to enhance satisfaction insights.
- **Real-Time Dashboard**: Connect the Power BI dashboard to a live data stream for real-time insights.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to fork the repository and submit pull requests with improvements, bug fixes, or new features.
