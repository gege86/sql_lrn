select dec(sum(lat_n),15,4) from station
where
  lat_n > 38.7880 and
  lat_n < 137.2345
;
