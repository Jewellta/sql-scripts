select m.description as 'major', avg(gpa)as GPA 
	from student s
	join major m on m.id=s.majorid
	group by m.description
	having avg(gpa) >= 3.0;

	--takes avg gpa of all students then groups by majors and shows majors higher than 3.0