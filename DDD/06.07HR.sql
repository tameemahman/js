DESCRIBE user_tables

SELECT table_name
FROM user_tables;

CREATE TABLE STUDENT_INFORMATION(
S_ID INT PRIMARY KEY,
S_NAME VARCHAR2(20),
S_EMAIL VARCHAR2(20),
S_DOB DATE ,
S_ADDRESS VARCHAR2(50)

)


CREATE SEQUENCE STUDENT_INFORMATION_SEQ_SQ
START WITH 1001
INCREMENT BY 1
MAXVALUE 9999
NOCACHE
CYCLE;

INSERT INTO STUDENT_INFORMATION
VALUES (STUDENT_INFORMATION_SEQ_SQ.NEXTVAL,'ULAAA','ULAA@GMAIL.COM','04-JUL-1992','KHULNA');

INSERT INTO STUDENT_INFORMATION
VALUE(STUDENT)

SELECT* FROM STUDENT_INFORMATION



SELECT * FROM DEPARTMENTS;
SELECT* FROM EMPLOYEES;

SELECT * FROM LOCATIONS;

CREATE VIEW EMP_DEPARTMENT _ID
AS

SELECT E.FIRST_NAME, E.PHONE_NUMBER, E.SALARY, L.STREET_ADDRESS, L.COUNTRY_ID
FROM EMPLOYEES E 

JOIN DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
JOIN LOCATIONS L ON L.LOCATION_ID= D.LOCATION_ID




WHERE D.DEPARTMENT_ID=60;













