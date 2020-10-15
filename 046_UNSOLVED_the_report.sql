--wip
-- initial join
select 
	*
from
    students
    full outer join grades
    on students.id = grades.grade
;
--
select 
	students.name,
	grades.grade,
	students.marks
from
    students
    full outer join grades
    on students.id = grades.grade
;
--
select 
    case 
        when (select grades.grade from grades where students.marks between grades.min_mark and grades.max_mark) >= 8 then students.name
        else 'NULL'
    end,
    (select grades.grade from grades where students.marks between grades.min_mark and grades.max_mark),
    students.marks
from
    students
    full outer join grades
    on students.id = grades.grade
where
    students.name is not null
order by 2 desc, 1 asc, 3 asc
;
-- there must be a better way, need to check other solutions
-- printed NULL as string, otherwise the solution was not accepted - db2 returns -- instead of writing out NULL in the output
