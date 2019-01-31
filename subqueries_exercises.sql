select * from employees where emp_no=101010;

select first_name, last_name
  from employees
  where hire_date in (
  select hire_date
  from employees
  where emp_no=101010
  );

select title
from titles
where emp_no in (
select emp_no from employees where first_name = 'Aamod');
--group by title;

select first_name, last_name
from employees
where emp_no in (
  select emp_no
  from dept_manager
  where to_date='9999-01-01'
) and gender = 'F';


select dept_name
from departments
where dept_no in (
  select dept_no
  from dept_manager
  join employees as female_managers
  on female_managers.emp_no = dept_manager.emp_no
  where to_date = '9999-01-01' and female_managers.gender='F'
)

select first_name, last_name
from employees
join salaries on salaries.emp_no = employees.emp_no
where salary in (
  select MAX(salary)
  from salaries
  order by salary desc
);