select count(A) from triangles ;
select * from triangles ;
--
select
case
    when A = B and B = C then 'Equilateral'
    when (A + B) <= C or (A + C) <= B or (B + C) <= A then 'Not A Triangle'
    when A = B or B = C or A = C then 'Isosceles'
    when A != B and B != C and A != C then 'Scalene'
end
from triangles ;
