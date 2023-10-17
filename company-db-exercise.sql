-- Exercise 1: Retrieve all employees' names and their corresponding departments.
SELECT e.first_name, e.last_name, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Exercise 2: Find the total number of employees in each department.
SELECT d.department_name, COUNT(e.employee_id) as employee_count
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Exercise 3: List the names of employees who work in the 'Sales' department.
SELECT first_name, last_name
FROM Employees
WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Sales');

-- Exercise 4: Retrieve the highest salary from the Employees table.
SELECT MAX(salary) as highest_salary
FROM Employees;

-- Exercise 5: Find the average salary of all employees.
SELECT AVG(salary) as average_salary
FROM Employees;

-- Exercise 6: List the employees with a salary greater than $60,000 and working in the 'Marketing' department.
SELECT first_name, last_name
FROM Employees
WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Marketing')
AND salary > 60000;

-- Exercise 7: Retrieve the department names and their locations.
SELECT department_name, location
FROM Departments;

-- Exercise 8: Find the employee with the highest salary and display their name and salary.
SELECT first_name, last_name, salary
FROM Employees
WHERE salary = (SELECT MAX(salary) FROM Employees);

-- Exercise 9: Count the number of employees in each department and display the department name, location, and the employee count.
SELECT d.department_name, d.location, COUNT(e.employee_id) as employee_count
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name, d.location;

-- Exercise 10: List the employees who have the same last name and order them by their first names.
SELECT e1.first_name, e1.last_name
FROM Employees e1
INNER JOIN Employees e2 ON e1.last_name = e2.last_name AND e1.employee_id != e2.employee_id
ORDER BY e1.last_name, e1.first_name;

-- Exercise 11: Find the department with the fewest employees.
SELECT department_name, COUNT(employee_id) as employee_count
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY department_name
ORDER BY employee_count
LIMIT 1;

-- Exercise 12: Calculate the total salary expense for each department and display the department name and the total salary expense.
SELECT d.department_name, SUM(e.salary) as total_salary_expense
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Exercise 13: Retrieve the employees who don't belong to any department (NULL department_id).
SELECT first_name, last_name
FROM Employees
WHERE department_id IS NULL;
