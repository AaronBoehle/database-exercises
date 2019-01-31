use employees;


select * from departments;

select * from dept_emp;

select * from employees;

select * from salaries;

select * from titles;



SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name,' ',employees.last_name) as 'Manager Name'
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
-- JOIN titles
-- ON titles.emp_no = employees.emp_no
where dept_manager.to_date='9999-01-01'
order by departments.dept_name asc ;

SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name,' ',employees.last_name) as 'Manager Name'
FROM employees
JOIN dept_manager
  ON dept_manager.emp_no=employees.emp_no
JOIN departments
  ON departments.dept_no = dept_manager.dept_no
where dept_manager.to_date='9999-01-01'
  and employees.gender='F'
order by departments.dept_name asc;

select title as 'Title', count(*) as 'Count'
from dept_emp
JOIN titles
  ON titles.emp_no = dept_emp.emp_no
where dept_emp.dept_no='d009'
  and titles.to_date = '9999-01-01'
  and dept_emp.to_date='9999-01-01'
group by titles.title;

select  departments.dept_name as 'Department Name',
        CONCAT(employees.first_name,' ',employees.last_name) as 'Manager Name',
        salaries.salary as 'Salary'
from employees
join dept_manager
  on dept_manager.emp_no = employees.emp_no
join departments
  on departments.dept_no = dept_manager.dept_no
join salaries
  on salaries.emp_no = dept_manager.emp_no
where salaries.to_date='9999-01-01'
  and dept_manager.to_date='9999-01-01'
order by departments.dept_name asc;

select  concat(e.first_name,' ',e.last_name) as 'Employee Name',
        departments.dept_name as 'Department Name',
        concat(manager.first_name,' ',manager.last_name) as 'Manager Name'
from employees as e
join dept_emp
  on dept_emp.emp_no = e.emp_no
join departments
  on departments.dept_no = dept_emp.dept_no
left join dept_manager
  on dept_manager.dept_no = departments.dept_no
left join employees as manager
  on manager.emp_no = dept_manager.emp_no
where dept_emp.to_date = '9999-01-01'
  and dept_manager.to_date='9999-01-01'
order by departments.dept_name asc, e.first_name asc;

