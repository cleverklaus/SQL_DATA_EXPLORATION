--BUILT IN FUNCTIONS--

--SUM FUNCTION--

select sum(COST) from PETRESCUE;

--MIN & MAX--

select MAX(QUANTITY)from PETRESCUE;

select MIN(ID) from PETRESCUE where ANIMAL = 'dog';

--AVG FUNCT RETURNS THE MEAN or AVERAGE--

--EXAMPLE--

select AVG(COST/QUANTITY) from PETRESCUE
where ANIMAL= 'Dog';

--SCALER & STRING FUNCTIONS--
--SCALER e.g ROUND(), LENGTH(), UCASE, LCASE--

select ROUND(COST) from PETRESCUE;

--RETRIEVE THE LENGTH OF EACH VALUE--

select LENGTH(ANIMAL) from PETRESCUE;

--IF NOT SURE IF VALUES STORED IN UPPER, LOWERCASE OR MIX--

select * from PETRESCUE 
where LCASE(ANIMAL) = 'cat';

--DATE AND TIME FUNCTS--
--EXTRACT THE DAY PORTION FROM A DATE--

select DAY(RESCUEDATE) from PETRESCUE
where ANIMAL = 'Cat';

--FIND OUT WHAT DATE IT IS AFTER THREE DAYS OF RESCUE--

select (RESCUEDATE+3) from PETRESCUE

--FIND HOW MANY DAYS HAVE PASSED SINCE RESCUEDATE--

select (CURRENT_DATE-RESCUEDATE) from PETRESCUE;

--SUBQUERIES--

Select EMP_ID, F_NAME, L_NAME, SALARY from employees 
where SALARY < ( select AVG (SALARY) from employees);

select EMP_ID, SALARY, 
(select AVG(SALARY) from employees ) AS AVG_SALARY 
from employees;

--QUERIES TO ACCESS MULTIPLE TABLES--

Select * from employees where department_ID IN 
(select DEPT_ID_DEP from departments);

Select DEPT_ID_DEP, DEP_NAME from DEPARTMENTS
where DEPT_ID_DEP IN (select DEP_ID from EMPLOYEES
                      where SALARY > 70000);

--ACCESSING MULTIPLE TABLES WITH IMPLICIT JOIN--

select * from EMPLOYEES E, DEPARTMENTS D
where E.DEP_ID = D.DEPT_ID_DEP;

select E.EMP_ID, D.DEPT_ID_DEP from
EMPLOYEES E, DEPARTMENTS D
where E.DEP_ID = D.DEPT_ID_DEP






