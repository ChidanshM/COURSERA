select EMP_ID, F_NAME, L_NAME, SALARY 
from employees 
where SALARY < (select AVG(SALARY) 
                from employees);
                
select EMP_ID, SALARY, ( select MAX(SALARY) from employees ) AS MAX_SALARY 
from employees;

select * from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) AS EMP4ALL;