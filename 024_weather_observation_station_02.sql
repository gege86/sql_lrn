select dec(sum(lat_n),15,2), dec(sum(long_w),15,2) from station ;
-- < for some reason this is wrong. maybe because not rounded?
-- decimal function reference: 
-- https://www.ibm.com/support/knowledgecenter/en/SSEPGG_9.7.0/com.ibm.db2.luw.sql.ref.doc/doc/r0000791.html
select round(sum(lat_n),2), round(sum(long_w),2) from station ;
-- < this was also not good (rounded fine, but displayed the trailing zeroes also, maybe that's a problem?)
select dec(round(sum(lat_n),2),15,2), dec(round(sum(long_w),2),15,2) from station ;
-- < rofl (this was good)
-- looks like the guys in the discussion could not come up with better either
