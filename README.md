Employee Management System Using SQL
Introduction
The Employee Management System is an SQL-based project that streamlines managing employee and department data, tracks projects, and generates insights through queries. It uses key SQL concepts like database creation, table relationships, joins, and window functions to analyze employee performance, salary, and department metrics. This system ensures efficient data management and provides insights for strategic HR decision-making.
Project Overview
•	Database Creation: employee_management_system
•	Tables
Employees: 
•	● EmployeeID (Primary Key) 
•	● FirstName 
•	● LastName 
•	● DepartmentID (Foreign Key referencing Departments) 
•	● HireDate 
•	Departments: 
•	● DepartmentID (Primary Key) 
•	● DepartmentName 
•	Projects: 
•	● ProjectID (Primary Key) 
•	● ProjectName 
•	● DepartmentID (Foreign Key referencing Departments) 
•	● StartDate 
•	● EndDate 
•	Employee Projects (Junction Table for Many-to-Many Relationship): 
•	● EmployeeID (Foreign Key referencing Employees) 
•	● ProjectID (Foreign Key referencing Projects)
Database Creation
We begin by creating the employee_management database, which stores employee, department, and performance review data.
Table Creation
Next, we create three tables: departments, employees, and project details, each linked via foreign keys to model relationships between employees, their departments, and performance reviews.
Data Insertion
Once the tables are created, we can insert sample data into the departments, employees, and projects tables.
Querying Data
Below are SQL queries used to retrieve, update, and analyze the data in the Employee Management System.
Joining Tables: Retrieve all employees with their department names.
Salary Analysis: Find employees and their salaries.
Salary Analysis by Department: Calculate the average salary for each department
This Query the average salary for each department and shows it alongside each employee's information.
Row Number Based on Hire Date:
This assigns a row number to each employee, sorted by the date they were hired.
It’s useful for scenarios where you want to track the order of employee hiring.
Conclusion
The Employee Management System demonstrates how SQL can be leveraged to efficiently manage and analyze employee and department data. By utilizing core SQL concepts such as database creation, table relationships, and advanced queries like window functions and joins, this system offers valuable insights into employee performance, project distributions and department analysis. This project showcases the powerful capabilities of SQL in organizing and extracting data, aiding
in data-driven decision-making for HR and management.
 



