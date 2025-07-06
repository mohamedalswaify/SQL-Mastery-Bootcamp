
SELECT * FROM employees;


SELECT last_name, hire_date, job_id, salary, department_id
FROM employees;


SELECT last_name, salary * 12 AS annual_salary 
FROM employees;


SELECT first_name + ' ' + last_name AS full_name 
FROM employees;



SELECT last_name, salary 
FROM employees 
WHERE salary < 2500;

SELECT last_name, job_id 
FROM employees 
WHERE job_id = 'IT_PROG';


SELECT * 
FROM employees
WHERE hire_date BETWEEN '2007-01-01' AND '2007-12-31';


select  *
from employees
where department_id =  30   or  department_id =  60 or  department_id =  90



SELECT last_name, salary 
FROM employees 
WHERE salary < 6000 and  job_id = 'IT_PROG';


SELECT last_name, salary ,job_id
FROM employees 
WHERE salary < 6000 or  job_id = 'IT_PROG';

select  *
from employees
where department_id  in(30,60,90)



select  *
from employees
where last_name like'A%'

select  *
from employees
where last_name like'%z'

select  *
from employees
where hire_date like'%-01-%'

select  *
from employees
where department_id is null

select  *
from employees
where department_id is not null


select  *
from employees
where hire_date not like'%-01-%'


select  *
from employees
where department_id not  in(30,60,90)


select  * 
from employees
where salary >=2500 and  salary <=7500


select  * 
from employees
where salary between 2500 and 7500

--Show last names starting with J, A, or M 

select last_name
from employees
where last_name like'A%' or   last_name like'M%'   or last_name like'J%'  


--Show last names and  salary job  whos  in IT_PROG  , ST_CLERK and ST_MAN


select  *
from employees



select last_name ,salary ,job_id 
from employees

where job_id in('IT_PROG' , 'ST_CLERK','ST_MAN')



--Show job ID and salary > 5000 for IT_PROG


select  job_id ,salary 
from employees
where salary >5000  and  job_id ='IT_PROG'




select  job_id ,salary 
from employees
where    job_id ='IT_PROG' and  salary >5000 


select  *
from employees
where department_id is null

select  *
from employees
where department_id is not null

--show all data for employees who not have commsission pct


select  * 
from employees
where commission_pct is null

--2500,3500,7500


select  *
from employees
where salary in(2500,3500,7500)

--<2500       >7500

select  *
from employees
where salary <2500  or salary >7500


select  *
from employees
where salary not between 2500 and 7500




select *
from employees
order by salARY 

select *
from employees
order by salARY   desc

select *
from employees
where salary >11000
order by salary   asc


-- Q3: Show last name and hire date  Hired after 1996 after that sorting data by salary desending

select  last_name ,hire_date ,salary
from employees
where hire_date >'1996-12-30'
order by salary desc

--IT_PROG     salary
--last_name   salary    job
select last_name ,salary ,job_id 
from employees
where job_id = 'IT_PROG'
order by salary

-------------------------------------------

select count(*) ,sum(salary),max(salary) ,min(salary),avg(salary)
from employees


select count(*) ,sum(salary),max(salary) ,min(salary),avg(salary)
from employees
where department_id =50



select department_id , count(*) ,sum(salary),max(salary) ,min(salary),avg(salary)
from employees
group by department_id


select job_id , count(*) ,sum(salary),max(salary) ,min(salary),avg(salary)
from employees
group by job_id

-----------------------------------------------------------------------------







select *
from employees


select *
from departments

select  *
from jobs


select  last_name , job_title
from employees join jobs
on employees.job_id = jobs.job_id

select last_name ,department_name 
from employees join departments
on employees.department_id = departments.department_id


select last_name ,department_name 
from employees e join departments d
on e.department_id = d.department_id


select  last_name , job_title
from employees e join jobs j
on e.job_id = j.job_id


select *
from departments


select *
from locations

select  department_name,city
from departments d join locations l
on d.location_id =l.location_id

select last_name ,department_name ,job_title
from employees e join departments d
on e.department_id = d.department_id
join jobs j
on e.job_id = j.job_id


select  department_name,city,country_name,region_name
from departments d join locations l
on d.location_id =l.location_id
join countries c 
on l.country_id =c.country_id
join regions r
on c.region_id = r.region_id
----------------------------------------------------------------
select *
from departments

insert into departments (department_id ,department_name)
values(280,'App')

insert into departments (department_id ,department_name,location_id)
values(290,'Mobile App',1700)
 
 employee_id, first_name, last_name, email, hire_date, job_id, salary, department_id

 insert into employees (employee_id, first_name, last_name, email, hire_date, job_id, salary, department_id)
values(208,'Mohamed','Alswaify','M@gmail.com','2022-09-21','IT_PROG',5000,90)

UPDATE employees
SET salary = 6000
WHERE employee_id =208;


delete employees
WHERE employee_id =208;

*


















