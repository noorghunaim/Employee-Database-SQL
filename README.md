# Employee-Database
**📖 Overview**

This project demonstrates a structured analysis of a synthetic employee dataset containing department assignments, job roles, salaries, and hiring dates. The dataset has been imported into a SQLite database for querying and analysis.

**📄 Dataset Details**

- **Filename:** employee_clean_100.csv

- **Format:** CSV

- **Number of Rows:** 100

- **Columns and Description:**
  
| Column   Name | Data Type | Description                         |
|---------------|:---------:|-------------------------------------|
| employee_id   |  INTEGER  | Unique identifier for each employee |
| first_name    |    TEXT   | Employee first name                 |
| last_name     |    TEXT   | Employee last name                  |
| department    |    TEXT   | Department name                     |
| job_role      |    TEXT   | Employee job role                   |
| gender        |    TEXT   | Employee gender                     |
| age           |  INTEGER  | Employee age                        |
| salary        |    REAL   | Employee salary in USD              |
| hire_date     |    TEXT   | Date of hiring (YYYY-MM-DD)         

**The aim of this project is to:**

- Store and query employee data efficiently in SQLite
- Perform basic to advanced SQL operations including filtering, aggregation, and sorting
  - Basic SELECT and filters
    - Filter by age range:
    
      <img width="659" height="163" alt="image" src="https://github.com/user-attachments/assets/aa06ddff-8b22-45e7-ae92-db2e3ab26767" />

  - Sorting and limiting results
    - Get top 5 highest paid employees:

      <img width="713" height="112" alt="image" src="https://github.com/user-attachments/assets/c13ac063-c137-48de-956c-30a26ec2efaf" />

  - Aggregations (COUNT, AVG, SUM, MIN, MAX)
    - Minimum and maximum salary:

      <img width="670" height="45" alt="image" src="https://github.com/user-attachments/assets/51caf03c-ac46-4fdd-9153-0cec317110fe" />

  - Grouping (GROUP BY and HAVING)
    - Total salary by department:

      <img width="749" height="144" alt="image" src="https://github.com/user-attachments/assets/890a144a-64f4-4909-9d7b-ca7c80bd948f" />

  - Subqueries and advanced analytics
    - Percentage of employees by gender:
      
     <img width="1007" height="66" alt="image" src="https://github.com/user-attachments/assets/a0d76882-0d22-42de-830e-738bb29da425" />














