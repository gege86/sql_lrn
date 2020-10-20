--wip
select 
    *
from
    difficulty dif
    inner join challenges cha on dif.difficulty_level = cha.difficulty_level
    inner join submissions sub on cha.challenge_id = sub.challenge_id
    inner join hackers hac on hac.hacker_id = sub.hacker_id
;