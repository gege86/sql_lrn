-- db2 syntax not available, using mysql
select 
    co.continent,
    floor(avg(ci.population))
from
    city ci
    inner join country co
    on ci.countrycode = co.code
group by co.continent
;
