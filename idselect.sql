select * from instructor;

select * from class where instructorid=20;

select * from class where id in (10101, 10201, 10301); 

update class set 
instructorid=20
where instructorid=10;