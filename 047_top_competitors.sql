select 
    hac.hacker_id,
    hac.name
from
    difficulty dif
    inner join challenges cha on dif.difficulty_level = cha.difficulty_level
    inner join submissions sub on cha.challenge_id = sub.challenge_id
    inner join hackers hac on hac.hacker_id = sub.hacker_id
where
    sub.score = dif.score
group by
    hac.hacker_id, hac.name
having
    count(sub.hacker_id) > 1
order by
    count(sub.hacker_id) desc, hac.hacker_id asc
;
-- lesson learned:
---- ha aggregate függvény van a query-ben, akkor kell "group by" és abban benne kell lennie az összes nem aggregált "select" oszlopnak
---- legalábbis erre jutottam