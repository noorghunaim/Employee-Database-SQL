-- to open the DB:
.open employee_data.db

-- Code to create the table employees:
CREATE TABLE employees (employee_id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, department TEXT, job_role TEXT, gender TEXT, age INTEGER, salary INTEGER, hire_date TEXT);

-- Import the csv file into SQLite:
.mode csv
.headers on -- to let SQL know there are headers in the csv file
.import employee_clean_100.csv employees -- this code used when the csv file is in the same folder as the DB hence we don't need to mention the path of the file

-- Check if the csv file was imported properly with the below code:
SELECT COUNT(*) FROM employees; --  this code should give you 100 rows

-- To cross check if the schema is as per the table we created after import:
PRAGMA table_info(employees);

-- 1. Basic Queries:
-- Query 1. Select all employees:
SELECT * FROM employees;

-- Query 2. Select specific columns:
SELECT first_name, last_name, department FROM employees;

-- Query 3. Filter by department:
SELECT * FROM employees WHERE department = 'IT';

-- Query 4. Filter by salary greater than a value:
SELECT * FROM employees WHERE salary > 80000;

-- Query 5. Filter by age range:
SELECT * FROM employees WHERE age BETWEEN 30 AND 40;

-- 2. Sorting and Limiting Queries:
-- Query 6. Sort employees by salary descending:
SELECT first_name, last_name, salary FROM employees ORDER BY salary DESC;

-- Query 7. Get top 5 highest paid employees:
SELECT first_name, last_name, salary FROM employees ORDER BY salary DESC LIMIT 5;

-- Query 8. Sort by hire date ascending:
SELECT first_name, last_name, hire_date FROM employees ORDER BY hire_date ASC;

-- 3. Aggregations Queries:
-- Query 9. Count total employees:
SELECT COUNT(*) AS total_employees FROM employees;

-- Query 10. Average salary:
SELECT AVG(salary) AS avg_salary FROM employees;

-- Query 11. Minimum and maximum salary:
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM employees;

-- Query 12. Average age by department:
SELECT department, AVG(age) AS avg_age FROM employees GROUP BY department;

-- Query 13. Count employees by gender:
SELECT gender, COUNT(*) AS gender_count FROM employees GROUP BY gender;

-- Query 14. Total salary by department:
SELECT department, SUM(salary) AS total_salary FROM employees GROUP BY department;

-- 4. Advanced Queries:
-- Query 15. Employees earning above department average:
 SELECT first_name, last_name, salary, department FROM employees e1 WHERE salary > (SELECT AVG(salary) FROM employees e2 WHERE e2.department = e1.department);

-- Query 16. Departments with more than 10 employees:
SELECT department, COUNT(*) AS num_employees FROM employees GROUP BY department HAVING num_employees > 10;

-- Query 17. Employees hired in the last 3 years:
SELECT * FROM employees WHERE hire_date >= date('now','-3 years');

-- Query 18. Percentage of employees by gender
SELECT gender, ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM employees),2) AS percentage FROM employees GROUP BY gender;

-- Query 19. Average salary per age group:
SELECT (age/10)*10 AS age_group, AVG(salary) AS avg_salary FROM employees GROUP BY age_group ORDER BY age_group;

-- Query 20. Find employees with salary above overall average:
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
