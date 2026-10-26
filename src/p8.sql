CREATE INDEX idx_department_salary
ON employees (department, salary);


Explanation:
This method allows the database to use the department value first and then search for employees whose salaries meet the required range within that department. This reduces the number of rows that need to be examined and can improve query performance.