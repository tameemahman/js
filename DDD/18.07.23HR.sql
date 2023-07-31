====== Q 1 =======

Create table emp1273746(
eid int constraint emp1273746_const primary key,
ename varchar2(20),
salary number(8,2),
hire_date date,
address varchar(30)

);

create sequence emp1273746_sq start with 10001 increment by 1

======= Q 2 =======

 alter table emp1273746
		add(
    		depatment_id number,
    		dept_name  varchar2(30)
            );
            
========= Q 3 ==========


 insert into emp1273746 (eid, ename, salary, hire_date, address,depatment_id,dept_name)
    		values(
    			1001, 'Sabit',50000,'03-jan-2002','Pabna', 80,'SAL_REP'  
        );
        
      
  insert into emp1273746 (eid, ename, salary, hire_date, address)
     		values(
    			1002, 'Fahim',48000,'05-mar-2005','Khulna'   
        );
        
        select*from emp1273746;
        
        
========= Q 4 =========
CREATE VIEW department_80_view AS
SELECT e.ename, d.dept_name, e.salary
FROM emp106588 e
JOIN departments d ON e.dept_id = d.dept_id
WHERE d.dept_id = 80;



        