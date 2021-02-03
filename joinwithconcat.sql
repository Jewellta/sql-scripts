select concat(s.lastname,', ', s.firstname)as name, c.subject, c.section
	from student s
join studentclass sc on sc.studentid=s.id
join class c on c.id=sc.classid 
where c.subject='english';