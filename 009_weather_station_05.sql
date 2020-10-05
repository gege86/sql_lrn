select max(length(city)) from station ;
select city, max(length(city)) from station group by city order by length(city) desc;
  
select city, length(city) from station order by length(city) desc, city asc fetch first row only ;
select city, length(city) from station order by length(city) asc, city asc fetch first row only ;
