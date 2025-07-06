select  *
from employees

select  last_name ,phone_number,salary
from employees

SELECT last_name as names, hire_date, job_id, salary, department_id ,salary *12 as annual_salary
FROM employees;


SELECT first_name + ' ' + last_name, hire_date, job_id, salary
FROM employees;



SELECT first_name + ' bin ' + last_name 'full name',      hire_date, job_id, salary
FROM employees;

-- Q1: Show full name and salary of each employee

select  *
from employees

select  first_name+ ' ' + last_name    as   full_name,salary
from employees

* The HR department wants a query to display the last name, 
job ID, hire date, and employee ID for each employee, 
with the employee ID appearing first. Provide an alias
STARTDATE for the HIRE_DATE column.


select employee_id , last_name ,job_id,hire_date as STARTDATE
from employees



SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  salary <2500



SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  job_id = 'IT_PROg'

SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  job_id = 'IT_PROg' or  job_id = 'ST_MAN'



SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  hire_date >= '1998-01-01'   and  hire_date <= '1998-12-30'  


SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  hire_date  between '1998-01-01'  and  '1998-12-30'  




SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  job_id = 'IT_PROg' or  job_id = 'ST_MAN'


SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  job_id in('IT_PROg','ST_MAN')

SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  hire_date >= '1998-01-01'   and  hire_date <= '1998-12-30'  


SELECT last_name, hire_date, job_id, salary, department_id
from employees
where department_id in(30,60,90)

-- Q2:show  name of all employees and job and  salary 
--whos  have job IT_PROG with salary > 5000

select first_name+ ' ' + last_name    as   full_name , job_id ,salary
from employees 
where job_id ='it_prog' and salary >5000

-- Q3: Show last name ,salary   and hire date whos  Hired from 1998 
--and salary more than 6000

select  last_name ,salary ,hire_date 
from employees
where hire_date >= '1998-01-01'   and  salary >=6000
order by hire_date desc



select  last_name ,salary ,hire_date 
from employees
where hire_date >= '1998-01-01'   and  salary >=6000
order by salary 

select  last_name ,salary ,hire_date 
from employees
where hire_date >= '1998-01-01'   and  salary >=6000
order by last_name 

select  last_name ,salary ,hire_date 
from employees
where hire_date like'%-01-%'

SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  hire_date like'1998%'

SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  job_id like'%MAN%' 

SELECT last_name, hire_date, job_id, salary, department_id
from employees
where department_id  is null

SELECT last_name, hire_date, job_id, salary, department_id
from employees
where department_id  is not null




SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  hire_date not like'1998%'

SELECT last_name, hire_date, job_id, salary, department_id
from employees
where department_id not in(30,60,90)


SELECT last_name, hire_date, job_id, salary, department_id
from employees
where  hire_date not  between '1998-01-01'  and  '1998-12-30'  

select upper(last_name ), lower(last_name ) ,len(phone_number) ,phone_number
from employees
where len(phone_number) =12  





SELECT last_name, hire_date, job_id, salary, department_id,left(hire_date,4)
from employees
where  left(hire_date,4) = '1998'

SELECT last_name, hire_date, job_id, salary, department_id,right(last_name,1)
from employees
where  right(last_name,1) ='z'

SELECT last_name,left(last_name,1)
from employees
where  left(last_name,1) in('J','A','M')

select  first_name ,hire_date,GETDATE() ,
DATEDIFF(day,hire_date,GETDATE()), 
DATEADD(day ,10, hire_date),
year(hire_date),
month(hire_date),day(hire_date) 

