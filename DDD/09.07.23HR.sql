--W3resource subquery Q14

SELECT employee_id, first_name ,last_name 
FROM employees
WHERE department_id IN (

SELECT department_id
FROM employees
where first_name like '%T%')
;

--Q 15

select employee_id, first_name, salary
from employees
where salary> (select avg(salary)
from employees)
and department_id in 
(select department_id
from employees
where first_name like '%J%');

--Q 16

select first_name, last_name, employee_id, job_id
from employees
where department_id=
(select department_id 
from departments
where location_id=
(select location_id
from locations
where city='Toronto'));

--another join method for Q 16

select e.first_name, e.last_name, e.employee_id, e.job_id
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id=d.location_id
where l.city='Toronto';

--Q 17
select employee_id, first_name, last_name, job_id
from employees
where salary<
(select salary 
from employees where job_id='MK_MAN');

--Q20
select employee_id, first_name, last_name, job_id
from employees
where salary> all
(select avg(salary)from employees 
group by department_id);

--Q22
SELECT departments.department_id, result1.total_amt 
FROM departments,  
( SELECT employees.department_id, SUM(employees.salary) total_amt  
FROM employees  
GROUP BY department_id) result1 
WHERE result1.department_id = departments.department_id;

--another solution
select department_id, sum(salary)as "Total salary"
from employees
group by department_id
having department_id is not null;

--book lesson 8 Q5
select*
from employees
where manager_id in (select employee_id from employees where last_name='King');


