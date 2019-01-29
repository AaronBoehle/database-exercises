select concat(emp_no,' - ',last_name,' ',first_name) as full_name, concat(birth_date) as DOB
from employees
limit 10;


describe departments;