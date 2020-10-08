select name, salary * months from employee ;
select name, salary * months from employee order by 2 desc ;
-- we can see from the above output that 7 ppl have the same max (just to check)
select max(salary * months) from employee ;
select count(employee_id) from employee where salary * months = 108064 ;
select max(salary * months), count(employee_id)
  from employee
  where
    (salary * months) = max(salary * months)  
;
-- ??
-- checked the discussion page and realized that the above "where" was missing a "select"
select max(salary * months), count(employee_id)
  from employee
  where
    (salary * months) = (select max(salary * months) from employee) 
;
