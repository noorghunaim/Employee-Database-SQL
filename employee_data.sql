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





