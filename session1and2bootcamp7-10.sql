
SELECT * FROM employees;


SELECT last_name, hire_date, job_id, salary, department_id
FROM employees;


SELECT last_name, salary * 12 AS annual_salary 
FROM employees;


SELECT first_name + ' ' + last_name AS full_name 
FROM employees;



select  last_name,salary ,job_id 
from employees
where salary >=7000 

select  last_name,salary ,job_id 
from employees
where job_id ='IT_PROG'

select  last_name,salary ,job_id ,hire_date
from employees
where hire_date >'1996-12-30'


-- Q3: Show last name and hire date for all employees  with salary more than or equal 5000

select *
from employees

select last_name ,hire_date,salary
from employees
where salary >=5000
order by salary 


select last_name ,hire_date,salary,job_id
from employees
where salary >=5000
order by salary  desc


select last_name ,hire_date,salary,job_id
from employees
where job_id ='IT_PROG' and  salary >=5000
order by salary  desc


select last_name ,hire_date,salary,job_id
from employees
where job_id ='IT_PROG' or  salary >=5000
order by salary  desc



--IT_PROG ,SA_REP
select last_name ,hire_date,salary,job_id
from employees
where job_id = 'IT_PROG' or  job_id ='SA_REP'


select last_name ,hire_date,salary,job_id
from employees
where job_id in('IT_PROG','SA_REP')

--30,60,90

select last_name ,hire_date,salary,job_id,department_id
from employees
where department_id = 30 or  department_id = 60 or department_id = 90



select last_name ,hire_date,salary,job_id,department_id
from employees
where department_id in(30,60,90)







-- Q3: Show full name ,salary   and hire date 
--whos  Hired from 1998 and salary more than 6000 then sorting data by date desending


select *
from employees

select concat(first_name , ' ',last_name )   as 'full name'
from employees

select first_name  + ' ' + last_name  as 'full name' ,salary ,hire_date
from employees
where hire_date >= '1998-01-01' and  salary >6000
order by hire_date desc

select  * 
from employees
where hire_date >= '1998-01-01'   and   hire_date <= '1998-12-30'

select  * 
from employees
where hire_date  between   '1998-01-01'  and '1998-12-30'

select  * 
from employees
where hire_date < '1998-01-01' or  hire_date> '1998-12-30'

select  * 
from employees
where hire_date not between   '1998-01-01'  and '1998-12-30'


select  * 
from employees
where salary not between  2500 and 7500

select last_name ,hire_date,salary,job_id,department_id
from employees
where department_id not in(30,60,90)

-- 2500   3500 7000

select  *
from employees  
where salary  not in(2500,3500,7000)


--ST_CLERK   or      SA_REP       and  or       not in   2200     3200    7500

select  *
from employees  
where    job_id ='SA_REP'      or           job_id ='ST_CLERK'     and    salary  not in(2200,3200,7500)
 
select  *
from employees  
where   ( job_id ='SA_REP'      or           job_id ='ST_CLERK' )    and    salary  not in(2200,3200,7500)

(13+7 +10 )/3 =10


select  *
from employees  
where    job_id in('SA_REP' ,'ST_CLERK')    and    salary  not in(2200,3200,7500)



declare @job varchar(20) = 'IT_PROG'
declare @sal int = 5000
select  * 
from employees
where job_id = @job   and salary >@sal

----------------------------------
select  upper(first_name) ,lower(last_name) ,len(phone_number)
from employees
where len(phone_number) =12









select count(last_name)
from employees

select count(commission_pct)
from employees


select count(*),sum(salary),max(salary),min(salary),avg(salary)
from employees
where department_id =90


select department_id , count(*),sum(salary),max(salary),min(salary),avg(salary)
from employees
where department_id in(10,20,50,90,100)
group by  department_id












select  upper(first_name) ,lower(last_name) ,len(phone_number) as lengthPhone
from employees
where len(phone_number) =12


from employees
where salary *12 >150000
select  last_name ,salary ,salary * 12 as total
order by total



select department_id , count(*),sum(salary) as total_salary,max(salary),min(salary),avg(salary)
from employees
where department_id in(10,20,50,90,100) 
group by  department_id
having  sum(salary) >50000
order by total_salary

--🔍 Task:
--Write a SQL query to retrieve, for each job title, 
--the job ID, the number of employees in that job, 
--the total salary, the highest salary, the lowest salary, and the average salary.
--The query should only consider jobs with IDs in the
-- list: 'IT_PROG', 'SA_MAN', 'FI_ACCOUNT', 'HR_REP', and 'AD_VP'. 
-- Additionally, include only those job titles where the total salary exceeds 5,000. 
--Finally, the result should be sorted in ascending order based on the total salary.

select job_id , count(*),sum(salary) as total_salary,max(salary),min(salary),avg(salary)
from employees
where job_id in('IT_PROG', 'SA_MAN', 'FI_ACCOUNT', 'HR_REP',  'AD_VP') 
group by  job_id
having  sum(salary) >5000
order by total_salary 

select last_name ,department_id ,salary ,salary +1000
from employees
where department_id =90

90  1000

60   500 

30   -500

select last_name ,department_id ,salary ,case	
												when  department_id =90    then  salary +1000
												when  department_id =60    then  salary +500
												when  department_id =30    then  salary -500
																			else salary
										end 
from employees

select last_name ,department_id ,salary ,case	 department_id
												when  90    then  salary +1000
												when  60    then  salary +500
												when  30    then  salary -500
																			else salary
										end 
from employees






select last_name ,department_id ,salary ,case	
												when salary >=12000    then   'High salary'
												 when salary >=6000    then   'Normal salary'
												 when salary >=3000    then   'low salary'
														else  'very low salary'
										end 
from employees
order by salary

--* Using the CASE function, write a query that displays the grade of all
--employees based on the value of the JOB_ID column, using the following data:
--Job 				Grade
--AD_PRES 			A
--ST_MAN 				B
--IT_PROG 			C
--SA_REP 				D
--ST_CLERK 			E
--None of the above 	0



select last_name ,job_id  ,case	
												when job_id ='AD_PRES'     then    'A'
												when job_id ='ST_MAN'     then    'B'
												when job_id ='IT_PROG'     then    'c'
												when job_id ='SA_REP'     then    'D'
												when job_id ='ST_CLERK'     then    'E'
														else  '0'
										end  as Grade
from employees 
order by salary



select last_name ,job_id  ,case	job_id
												when 'AD_PRES'     then    'A'
												when 'ST_MAN'     then    'B'
												when 'IT_PROG'     then    'c'
												when 'SA_REP'     then    'D'
												when 'ST_CLERK'     then    'E'
														else  '0'
										end  as Grade
from employees 




-----------------------------------------------------------------------------------------

select  *
from employees



select  *
from departments


select  last_name ,department_name
from employees join departments
on employees.department_id  =departments.department_id



select  last_name ,department_name
from employees e join departments d
on e.department_id  =d.department_id




select  *
from employees


select *
from jobs



select  last_name ,job_title
from employees e join jobs j
on e.job_id = j.job_id



select  last_name ,department_name,job_title
from employees e join departments d
on e.department_id  =d.department_id
join jobs j
on e.job_id = j.job_id


select department_name ,city ,country_name,region_name
from departments d join locations l
on d.location_id = l.location_id
join countries c
on l.country_id = c.country_id
join regions r
on c.region_id = r.region_id






















