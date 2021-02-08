drop procedure adduser;

delimiter //

create procedure adduser(in uname varchar(30),
in pword varchar(30),
in fname varchar (30),
in lname varchar (30))

begin
	insert into users ( username, password, firstname, lastname, isreviewer, isadmin)
		values(uname, pword, fname, lname, 0, 0);
END//

delimiter ;

call adduser('rv', 'rv', 'system', 'reviewer');