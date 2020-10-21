select
    w.id,
    p.age,
    w.coins_needed,
    w.power
from
    wands w
    inner join wands_property p on w.code = p.code
where 
    w.coins_needed IN
    ( select min(coins_needed)
        from wands wan
        where wan.code = p.code and p.is_evil = 0
        group by wan.power
    )
order by
    w.power desc,
    p.age desc
;
-- this is crazy! I had to use the discussions tab.
-- lessons learned: you can't include a (non-aggregated) column in a "select" statement that you don't include in the "group by" clause