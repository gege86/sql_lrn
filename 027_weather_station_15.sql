-- again, the rounding does not remove the trailing zeroes
-- had to do that with the decimal function
select dec(round(long_w,4),15,4) from station
where
  lat_n = (
    select lat_n from station
    where lat_n < 137.2345
    order by lat_n desc
    fetch first row only
    )
;
-- can this be done in a better way?
-- according to the discussion page, yes!
select dec(round(long_w,4),15,4) from station
where lat_n < 137.2345
order by lat_n desc
fetch first row only
;
