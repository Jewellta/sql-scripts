drop procedure getallusers;

DELIMITER //

create PROCEDURE GetAllUsers()
BEGIN
select id, username, firstname, lastname, phone, email, isreviewer, isadmin 
	from users;
END//  -- how to create new stored prochedures

delimiter ;

call GetAllUsers(); -- how to call your new stored prochedure

/* comment /*