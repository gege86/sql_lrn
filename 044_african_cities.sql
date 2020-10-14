--no option for db2, using mysql
select 
    ci.name
from
    city ci
    inner join country co
    on ci.countrycode = co.code
where
    co.continent = 'Africa'
;
