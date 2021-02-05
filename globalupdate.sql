-- 10% shaved off gpa adjust

select lastname, gpa, gpa*(.1)+gpa from student;

update student set
gpa = gpa*(.1)+ gpa 
where id > 0 ;

-- gpa*1.1 is also a solution