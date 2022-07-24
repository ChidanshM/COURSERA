/*Select the names and job start dates of all employees 
who work for the department number 5.
*/
select e.f_name, e.l_name, jh.start_date 
	from employees as e 
		inner join job_history as jh on e.emp_id = jh.empl_id
	where e.dep_id='5';
	
	
/*Select the names, job start dates, and job titles of all employees 
who work for the department number 5.
*/
select e.f_name, e.l_name, jh.start_date j,job_title
	from employees as e 
		inner join job_history as jh on e.emp_id = jh.empl_id
		inner join jobs as j on e.job_id = j.job_ident
	where e.dep_id='5';
	
/*Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables 
and select employee id, last name, department id and department name for all employees.
*/
select e.emp_id, e.l_name, e.dep_id, d.dep_name
	from employees as e 
		left outer join departments as d on e.dep_id = d.dept_id_dep;
		
/*Re-write the previous query but limit the result set to 
include only the rows for employees born before 1980.
*/
select e.emp_id, e.l_name, e.dep_id, d.dep_name
	from employees as e 
		left outer join departments as d on e.dep_id = d.dept_id_dep
	where year(e.b_date)<1980;
	
/*Re-write the previous query but have the result set include all the employees 
but department names for only the employees who were born before 1980.
*/
select e.emp_id, e.l_name, e.dep_id, d.dep_name
	from employees as e 
		left outer join departments as d on e.dep_id = d.dept_id_dep
			and year(e.b_date)<1980;
			
/*Perform a Full Join on the EMPLOYEES and DEPARTMENT tables 
and select the First name, Last name and Department name of all employees.
*/
select e.f_name, e.l_name, d.dep_name
	from employees as e 
		full outer join departments as d on e.dep_id = d.dept_id_dep;

/*Re-write the previous query but have the result set include all employee names 
but department id and department names only for male employees.
*/
select e.f_name, e.l_name, d.dept_id_dep, d.dep_name
	from employees as e 
		full outer join departments as d on e.dep_id = d.dept_id_dep
			and e.sex='M';

