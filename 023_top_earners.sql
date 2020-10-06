-- wip
select name, salary * months from employee ;
select name, salary * months from employee order by 2 desc ;
-- we can see from the above output that 7 ppl have the same max (just to check)
select max(salary * months) from employee ;
select max(salary * months), count(id)
  from employee
  where
    (salary * months) = max(salary * months)  
;
-- ??

