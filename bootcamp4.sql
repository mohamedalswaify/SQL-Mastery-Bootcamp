select *
from employees

select last_name ,salary ,job_id,salary * 12 as total
from employees


select last_name ,salary ,job_id,salary * 12  total
from employees
where salary <=2500

select last_name ,salary ,job_id,salary * 12  total
from employees
where job_id ='IT_PROG' or   job_id ='ST_MAN'


select last_name ,salary ,job_id,salary * 12  total
from employees
where job_id ='IT_PROG'  and salary <5000

select last_name ,salary ,job_id,salary * 12  total
from employees
where job_id ='IT_PROG' or   job_id ='ST_MAN'

select last_name ,salary ,job_id,salary * 12  total
from employees
where job_id in('IT_PROG','ST_MAN')


select last_name ,salary ,job_id,department_id
from employees
where department_id =30 or   department_id =60 or department_id =90


select last_name ,salary ,job_id,department_id
from employees
where department_id in(30,60,90)

select last_name ,salary ,job_id,department_id,hire_date
from employees
where hire_date >='1998-01-01'  and  hire_date <='1998-12-30'

select last_name ,salary ,job_id,department_id,hire_date
from employees
where hire_date between '1998-01-01'   and '1998-12-30'

-- Q3: Show full name ,salary   and hire date 
--whos  Hired from 1998 and salary more than 6000

select  first_name ,last_name ,salary ,hire_date 
from employees
where hire_date >= '1998-01-01'  and salary >6000
order by salary desc


select  first_name ,last_name ,salary ,hire_date 
from employees
where last_name like'%z'

select  first_name ,last_name ,salary ,hire_date 
from employees
where hire_date like'%-01-%'


--A , J , M 


select  last_name 
from employees
where last_name like'A%'  or last_name like'J%'  or last_name like'M%'


select  *
 from employees
 where department_id is null

 select  *
 from employees
 where department_id is not null







 select  first_name ,last_name ,salary ,hire_date 
from employees
where hire_date not like'%-01-%'


select last_name ,salary ,job_id,department_id,hire_date
from employees
where hire_date not between '1998-01-01'   and '1998-12-30'



select last_name ,salary ,job_id,department_id
from employees
where department_id not  in(30,60,90)


select UPPER(last_name), LOWER(last_name), LEN(phone_number), LEFT(hire_date ,4), RIGHT(hire_date,2)
from employees



select  last_name,left(last_name,1) 
from employees
where left(last_name,1)  in('A','M','J')

--1997 - 1998 - 1995

select  last_name ,left(hire_date,4)
from employees
where left(hire_date,4) in(1995,1997,1998) 

SELECT ROUND(123.4567, 1) AS RoundedNumber;

SELECT ROUND(123.5567, 0) AS RoundedNumber;
SELECT CEILING(12.6) AS CeilResult;

SELECT FLOOR(12.9) AS FloorResult;

--0.05525552
select  last_name ,salary ,CEILING(salary  * 0.05525552)
from employees

select  GETDATE(),hire_date, DATEADD(day , 10 ,hire_date), DATEDIFF(year ,hire_date,GETDATE()), YEAR(hire_date), MONTH(hire_date), DAY(hire_date)
from employees


select  first_name + ' ' + last_name
from employees    '1000'

select  first_name + ' bin ' + last_name   , CAST(salary as varchar)  +' SR'
from employees


select  first_name ,CONVERT(nvarchar(10),hire_date,106)
from employees

select  last_name ,salary ,salary +500
from employees
where department_id=90
select  last_name ,department_id,salary ,case
								when department_id=90  then salary +1000
								when department_id=60  then salary +500
								when department_id=30  then salary -500
														else salary
							End
from employees

select  last_name ,salary ,iif(salary >=10000,'High','Low')
from employees

>12000   High_Salary
>6000    Normal_Salary
>3000    low_salary
else     very_low_salary




select  last_name ,department_id,salary ,case
								when salary >12000  then 'High_Salary'
								when salary >6000  then 'Normal_Salary'
								when salary >3000  then 'low_salary'
								
														else 'very_low_salary'
							End
from employees



select  department_id, Count(*) ,Max(salary) ,Min(salary) ,Sum(salary) ,AVG(salary)
from employees
group by department_id






