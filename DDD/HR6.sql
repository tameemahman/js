SELECT job_id
FROM employees
UNION ALL
SELECT job_id
FROM retired_employees

SELECT EMPLOYEE_ID, JOB_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID=80
MINUS
SELECT EMPLOYEE_ID,JOB_ID
FROM RETIRED_EMPLOYEES
WHERE DEPARTMENT_ID=90;


SELECT location_id, department_name "Department",
TO_CHAR(NULL) "Warehouse location"
FROM departments
UNION
SELECT location_id, TO_CHAR(NULL) "Department",
state_province
FROM locations;




