use employees;

select *
from employees
where gender = 'M'
  and (first_name = 'Irena'
  or first_name = 'Vidya'
  or first_name = 'Maya')
order by last_name desc , first_name desc ;

select concat(first_name,' ', last_name)
from employees
where last_name like 'E%'
  and last_name like '%e'
order by emp_no desc ;

select concat(first_name,' ',last_name, ' has been with the company for ',datediff(current_date, hire_date),' days!')
from employees
where birth_date like '%-12-25'
  and (hire_date between '1990-01-01' and '1999-12-31')
order by birth_date asc , hire_date desc;

select *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

select concat(current_date );
