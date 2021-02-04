select s.id, s.lastname, m.description
from student s
left join major m on s.majorid=m.id
where s.id < 10;