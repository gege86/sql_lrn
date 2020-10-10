-- first query
select name || '(' || left(occupation,1) || ')' from occupations order by name ;
-- second query
select 'There are a total of ' || 
  count(occupation) || 
  ' ' || 
  lcase(occupation) || 
  's.' 
from occupations
group by occupation
order by count(occupation), occupation
;
