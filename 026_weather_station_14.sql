select dec(lat_n,15,4) from station
where lat_n < 137.2345
order by lat_n desc
fetch first row only
;
