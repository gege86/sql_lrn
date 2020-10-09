select dec(round(long_w,4),15,4) from station
where 
  lat_n = (select min(lat_n) from station where lat_n > 38.7780)
;
-- can this be done better?
-- I think this is be slower/more expensive:
select dec(round(long_w,4),15,4) from station
where lat_n > 38.7780
order by lat_n
fetch first row only
;
