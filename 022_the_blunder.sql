-- wip
select average(salary) from employees ;
select count(salary) from employees ;
select salary from employees ;
select replace(salary,0,'') from employees ;
select ceil(avg(salary) - avg(replace(salary,0,''))) from employees ;
select floor(avg(salary) - avg(replace(salary,0,''))) from employees ;
select round(avg(salary) - avg(replace(salary,0,''))) from employees ;
-- I tried in excel as well and confirmed that for some reason I am losing precision when doing avg(salary)
-- why?
-- this works:
select ceil(avg(dec(salary)) - avg(replace(salary,0,''))) from employees ;
