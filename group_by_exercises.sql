select distinct title from titles;

select first_name, last_name
from employees
where last_name like 'E%' and last_name like '%e'
group by first_name, last_name;

select last_name, first_name, count(last_name)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name, first_name
order by last_name desc ;

select count(*), gender
from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
group by gender;