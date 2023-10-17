DROP TABLE Departments; 
-- Create the Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Insert sample data into the Departments table
INSERT INTO Departments (department_id, department_name, location)
VALUES
    (1, 'HR', 'New York'),
    (2, 'Sales', 'Los Angeles'),
    (3, 'Marketing', 'Chicago'),
    (4, 'Engineering', 'San Francisco');
   
   
DROP TABLE Employees;

-- Create the Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id)
       REFERENCES Departments (department_id) 
);

-- Insert sample data into the Employees table
INSERT INTO Employees (employee_id, first_name, last_name, department_id, salary)
VALUES
    (1, 'John', 'Doe', 1, 60000.00),
    (2, 'Jane', 'Smith', 2, 75000.00),
    (3, 'Bob', 'Johnson', 2, 70000.00),
    (4, 'Alice', 'Brown', 3, 65000.00),
    (5, 'Eve', 'Williams', 4, 80000.00),
    (6, 'Charlie', 'Davis', 3, 72000.00),
    (7, 'David', 'Wilson', NULL, 62000.00),
    (8, 'Michael', 'Lee', 1, 58000.00),
    (9, 'Sarah', 'Clark', 2, 72000.00),
    (10, 'James', 'Miller', 2, 71000.00),
    (11, 'Emily', 'Taylor', 3, 67000.00),
    (12, 'Daniel', 'Wilson', 4, 82000.00),
    (13, 'Olivia', 'Harris', 3, 73000.00),
    (14, 'Andrew', 'White', 1, 59000.00),
    (15, 'Sophia', 'Evans', 2, 74000.00),
    (16, 'Matthew', 'Anderson', 4, 85000.00),
    (17, 'Ava', 'Turner', 1, 60000.00),
    (18, 'William', 'Harris', 3, 68000.00),
    (19, 'Mia', 'Thomas', 4, 81000.00),
    (20, 'Ethan', 'Martin', 2, 73000.00),
    (21, 'Oliver', 'Brown', 3, 69000.00),
    (22, 'Isabella', 'Davis', 1, 61000.00),
    (23, 'Liam', 'Garcia', 4, 83000.00),
    (24, 'Charlotte', 'Smith', 2, 72000.00),
    (25, 'Benjamin', 'Anderson', 1, 62000.00),
    (26, 'Amelia', 'Walker', 3, 70000.00),
    (27, 'Lucas', 'Lopez', 2, 71000.00),
    (28, 'Ella', 'Jackson', 4, 84000.00),
    (29, 'Henry', 'Hall', 1, 63000.00),
    (30, 'Harper', 'Wright', 3, 71000.00),
    (31, 'Alexander', 'Young', 2, 75000.00),
    (32, 'Sophia', 'Hernandez', 4, 86000.00),
    (33, 'Liam', 'Wilson', 1, 64000.00),
    (34, 'Mia', 'Thompson', 3, 72000.00),
    (35, 'Lucas', 'Walker', 4, 87000.00),
    (36, 'Ava', 'Garcia', 2, 76000.00),
    (37, 'Ethan', 'Martinez', 1, 65000.00),
    (38, 'Isabella', 'White', 3, 73000.00),
    (39, 'Oliver', 'Taylor', 4, 88000.00),
    (40, 'Amelia', 'Johnson', 2, 77000.00),
    (41, 'Benjamin', 'Martin', 1, 66000.00),
    (42, 'Charlotte', 'Thompson', 3, 74000.00),
    (43, 'Ella', 'Hall', 4, 89000.00),
    (44, 'William', 'Jackson', 2, 78000.00),
    (45, 'Henry', 'Anderson', 1, 67000.00),
    (46, 'Harper', 'Wright', 3, 75000.00),
    (47, 'Alexander', 'Young', 4, 90000.00),
    (48, 'Michael', 'Thomas', 2, 79000.00),
    (49, 'Olivia', 'Williams', 1, 68000.00),
    (50, 'James', 'Evans', 3, 76000.00);
