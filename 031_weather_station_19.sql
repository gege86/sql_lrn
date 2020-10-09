select
    DEC(
        SQRT(
            POWER(min(lat_n) - max(lat_n),2) +
            POWER(min(long_w) - max(long_w),2)
            ),
        15,4)
from station
;
