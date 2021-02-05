use bootcamp;
create table user (
	id int not null primary key auto_increment,
    name varchar(50) not null, 
    address varchar(50) not null,
    city varchar(50) not null,
    state varchar(2) not null,
    zip varchar(5) not null,
    email varchar(100),
    phone varchar(20),
    role varchar(50) not null
);

create table vehicle(
	id int not null primary key auto_increment,
    year int(4) not null,
    model varchar(25) not null,
    make varchar(20) not null,
    vin varchar(17) not null,
    trim varchar(25),
    ownerId int, 
    foreign key (ownerId) references user(id)
);