insert user
	(name, address, city, state, zip, email, phone, role)
    values
    ('joe', '5055 parkway', 'cincinnati', 'OH', '45237', 'joes@gmail.com', '513-505-5021', 'student');
    
    -- inserts user into user table
    
    insert vehicle
    (year, model, make, vin, trim, ownerid)
    values
    ('2019', 'ford', 'f150', '124', 'xle',(select id from user where name='joe')),
    ('2018', 'ford', 'f150', '126', 'xle',null);
    
    -- inserts 2 vehicles into table and assigns one user to a vehicle
    
    select *
    from vehicle v
    left join user u on v.ownerid=u.id
    
    -- displays both tables with a left join to show unowned vehicle