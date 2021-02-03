select * 
from class c
join majorclass mc on mc.classid= c.id
join major m on m.id=mc.majorid
where c.code ='mat203'
order by c.code;