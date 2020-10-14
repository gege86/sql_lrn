-- wip
-- no option for db2, using mysql
-- syntax is the same here I think
select 
    sum(ci.population)
from
    city ci
    inner join country co
    on ci.countrycode = co.code
where
    co.continent = 'Asia'
;
