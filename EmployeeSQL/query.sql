select emp_no, last_name,first_name,gender,salary.salary 
from employee join salary using (emp_no);

select first_name,last_name,hire_date from employee 
where extract (year from hire_date) = 1986;

select dept_no, dept_name, emp_no, last_name, first_name 
from dept_manager
join employee using (emp_no) join department using (dept_no);

select emp_no, last_name, first_name, dept_name 
from dept_emp join employee using (emp_no)
join department using(dept_no);


select first_name,last_name,gender from employee 
where first_name = 'Hercules' and last_name like 'B%';

select emp_no, last_name,first_name,dept_name from employee
join dept_emp using (emp_no) join department using(dept_no)
where dept_name = 'Sales';

select emp_no, last_name,first_name,dept_name from employee
join dept_emp using (emp_no) join department using(dept_no)
where dept_name = 'Sales' or dept_name = 'Development';

select last_name, count(last_name) from employee
group by last_name order by count(last_name) desc;

-- 1.List the following details of each employee: employee number, last name, first name, sex, and salary.
-- 2.List first name, last name, and hire date for employee who were hired in 1986.
-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
-- 5.List first name, last name, and sex for employee whose first name is "Hercules" and last names begin with "B."
-- 6.List all employee in the Sales department, including their employee number, last name, first name, and department name.
-- 7.List all employee in the Sales and Development department, including their employee number, last name, first name, and department name.
-- 8.In descending order, list the frequency count of employee last names, i.e., how many employee share each last name



