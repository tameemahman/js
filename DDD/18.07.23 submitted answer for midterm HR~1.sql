 =======  Q1======

CREATE TABLE emp1273333 (
    eid INT CONSTRAINT emp1273333_const PRIMARY KEY,
    ename VARCHAR2(30),
    hire_date DATE,
    salary NUMBER(8,2),
    address VARCHAR2(30)
);

 
  Q 2  

AlTER TABLE emp1273333
ADD (department_id number,
dept_name varchar2(30));

 Q 3

insert into emp1273333
values(emp1273333_sq.nextval,'Fahim','02-jan-1998',25000,'Dhaka',80,'SAL_REP');

insert into emp1273333
values(emp1273333_sq.nextval,'Ayan','02-jan-1998',20000,'Dhaka',40,'SAL_CEP');


Q 4
create view emp1273333_view
			as select * from emp1273333
             where department_id = 80;
             
             
         Q 5    
             create sequence emp1273333_sq start with 100 increment by 1
             
             select* from emp1273333;
              select* from emp1273333_view;
            Q 6 
             
             INSERT INTO emp1273333 (eid, ename, hire_date, salary)
SELECT employee_id, last_name, hire_date, salary
FROM employees
WHERE department_id = 80;