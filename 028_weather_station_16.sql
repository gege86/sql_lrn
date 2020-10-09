select dec(round(min(lat_n),4),15,4) from station
where
  lat_n > 38.7780
;
