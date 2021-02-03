select *
from major m
join majorclass mc on mc.majorid=m.id
join class c on c.id=mc.classid
join instructor i on i.id=c.instructorid;