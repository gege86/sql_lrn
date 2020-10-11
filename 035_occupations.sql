--wip
SELECT
    CASE WHEN occupation = 'Doctor'
           THEN name END,
    CASE WHEN occupation = 'Professor'
           THEN name END,
    CASE WHEN occupation = 'Singer'
           THEN name END,
    CASE WHEN occupation = 'Actor'
           THEN name END
from occupations ;
