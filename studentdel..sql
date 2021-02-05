select * from student;

insert student
(firstname,lastname,SAT,GPA,MajorId)
values
( 'smart', 'enginee', '2500', '3.93', 
	(select id from Major where Description ='Engineering')
);

select * from student;

delete from student 
where id in (select id from student
where gpa =3.45 and firstname = 'noah2') ;