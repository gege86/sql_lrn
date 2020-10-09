-- could be more robust, but here it is
-- (should include getting the value 250 which I did by doing count(lat_n) and checking the output)
select dec(round(lat_n,4),15,4) from
    (select lat_n, ROW_NUMBER() OVER(order by lat_n) as rn from station)
where rn = 250
;
