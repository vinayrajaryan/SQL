create database employeemanagementsystem;
use employeemanagementsystem;
create table departments(
department_id INT primary key,
department_name varchar(50) not null unique);

create table employees (
employee_id INT auto_increment primary key,
First_name varchar(50) not null,
last_name varchar(50) not null,
hire_date DATE NOT NULL,
department_id INT,
foreign key (department_id) 
references departments(department_id));

create table projects (
project_id INT auto_increment primary key,
project_name varchar(50) not null,
Start_date DATE NOT NULL,
end_date DATE NOT NULL,
department_id INT,
foreign key (department_id) 
references departments(department_id));

create table employee_projects (
employee_id INT,
foreign key (employee_id) 
references employees(employee_id),
project_id INT, 
foreign key (project_id) 
references projects(project_id));

insert into departments (department_name, department_id)
values 
('Human_resources', '2345'),
('engeneering', '1234'),
('sales', '9876'),
('procurement', '4356'),
('finance', '6787'); 

insert into employees (employee_id, First_name, last_name, hire_date, department_id)
values 
('1111', 'vinay', 'raj', '1985-07-12', '2345'),
('2222', 'suma', 'rao', '1989-12-12', '1234'),
('3333', 'hari', 'ram', '1995-03-05', '9876'),
('4444', 'ELI', 'AVR', '2005-04-04', '4356'),
('5555', 'ALI', 'ABBAS', '2020-07-07', '6787');

INSERT INTO PROJECTS (project_id, project_name, Start_date, end_date, department_id)
VALUES
('1010', 'ALPHA', '2024', '2024', '2345'),
('2020', 'BETA', '2023', '2023', '1234'),
('3030', 'GAMA', '2022', '2022', '9876'),
('4040', 'XRAY', '2021', '2021', '4356'),
('5050', 'ZULU', '2020', '2020', '6787');

INSERT INTO employee_projects (employee_id, project_id)
VALUES
('1111', '1010'),
('5555', '2020'),
('2222', '3030'),
('3333', '4040'),
('4444', '5050'),
('5555', '1010'),
('1111', '2020'),
('3333', '3030'),
('2222', '4040'),
('5555', '5050');

alter table departments 
add salary INT;

update departments
set salary=salary*1.08
where department_name='human_resources';

select avg(salary) as avgsal
from departments;

select e.employee_id, p.project_id, p.project_name 
from projects as p
join employee_projects as e on e.project_id=p.project_id;

select project_name, datediff(Start_date, end_date) as duration
from projects
order by duration desc;

select department_ID, count(*) AS NOEMP
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

SELECT E.FIRST_NAME, E.LAST_NAME, P.PROJECT_NAME
FROM EMPLOYEES AS E
JOIN DEPARTMENTS AS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
JOIN PROJECTS AS P ON P.DEPARTMENT_ID=D.DEPARTMENT_ID;

SELECT DEPARTMENT_NAME, SUM(SALARY) AS TOTSAL
FROM DEPARTMENTS
GROUP BY DEPARTMENT_NAME
ORDER BY TOTSAL DESC;

update projects 
set end_date='2022-12-31'
where project_id=(select
min(end_date)
from projects);

select * from employee_projects where employee_id=(select
employee_id
from projects
group by project_name 
having project_name is null);

