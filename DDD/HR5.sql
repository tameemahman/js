SELECT LAST_NAME,COMMISSION_PCS
FROM EMPLOYEES;

SELECT LAST_NAME, NVL(TO_CHAR(COMMISSION_PCT),'No Commision')
FROM EMPLOYEES; 


SELECT JOB_ID, CASE JOB_ID
WHEN 'ST_CLERK' THEN 'E'
WHEN 'SA_REP' THEN 'D'
WHEN 'IT_PROG' THEN 'C'
WHEN 'ST_CLERK' THEN 'B'
WHEN 'AD_PRES' THEN 'A'
ELSE '0' END GRADE
FROM EMPLOYEES;


SELECT E.JOB_ID,
CASE 
WHEN E.JOB_ID = 'AD_PRES' THEN 'A'
WHEN E.JOB_ID = 'ST_MAN'  THEN 'B'
WHEN E.JOB_ID = 'IT_PROG'  THEN 'C'
WHEN E.JOB_ID = 'SA_REP'  THEN 'D'
WHEN E.JOB_ID = 'ST_CLERK'  THEN 'E'
ELSE'0'
END AS GRADE
FROM EMPLOYEES E;


SELECT JOB_ID, DECODE(JOB_ID,
'ST_CLERK', 'E',
'SA_REP',   'D',
'IT_PROG', 'C',
'ST_MAN',  'B',
'AD_PRES', 'A',
'0') GRADE
FROM EMPLOYEES;