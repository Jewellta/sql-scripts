use sys;

drop database if exists PRSDB;

create database PRSDB;

use PRSDB;

create table users(
	id int not null primary key auto_increment,
	username varchar(30) not null unique,
	password varchar(30) not null,
	firstname varchar(30) not null,
	lastname varchar(30) not null,
	phone varchar(12),
	email varchar(255),
	isreviewer tinyint not null default 0,
	isadmin tinyint not null default 0
);

insert users
(username, password,firstname,lastname,isreviewer,isadmin)
values
('sa', 'sa', 'system', 'admin', 1, 1);

create table vendor (
	id int not null primary key auto_increment,
	code varchar(10) not null unique,
	name varchar(30) not null,
	address varchar(30) not null,
	city varchar(30) not null,
	state varchar(2) not null,
	zip varchar(5) not null,
	phone varchar(12),
	email varchar(255)
);

insert into vendor
(code, name, address, city, state, zip)
values
('AMAZ', 'Amazon', '1 amazon way', 'seattle', 'WA', '45239'),
('EB', 'Ebay', '1 ebay way', 'Las Vegas', 'NV', '45238'),
('TARG', 'Target', '1 target way', 'minneapolis', 'MN', '45237');

create table request(
	id int not null primary key auto_increment,
	description varchar(80)not null,
	justification varchar(80) not null,
	rejectionreason varchar(80),
	deliverymode varchar(20) not null default 'pickup',
	status varchar(10)not null default 'NEW',
	total decimal(11,2) not null default 0,
    dateNeeded date not null,
    submittedDate datetime not null default current_timestamp,
	Userid int not null,
    foreign key(userid) references users(id)
);

insert into request(description, justification, dateNeeded, userId)
values
('first requst', 'just because', '2021-03-01', (select id from users where username ='sa'));
 
 create table Products(
	id int not null primary key auto_increment,
	partnumber varchar(30) not null unique,
	name varchar(30) not null,
	price decimal(11,2) not null,
	unit varchar(30) not null,
	photopath varchar(255),
	vendorid int not null,
    foreign key (vendorid) references vendor(id)
);

insert into products (partnumber, name, price, unit, vendorId)
values
('13', 'tv', 500.00, '1', (select id from vendor where code= 'AMAZ')),
('14', 'mouse', 40.00, '1', (select id from vendor where code='AMAZ')),
('15', 'laptop', 1000.00, '1', (select id from vendor where code= 'AMAZ')
);

create table lineItems(
	id int not null primary key auto_increment,
		requestid int not null,
			foreign key(requestid) references request(id),
		productid int not null,
			foreign key(productid) references products(id),
		quantity int not null default 1,
        constraint requestid_productid unique (requestid, productid)
);

insert into Lineitems (requestId, productId, quantity)
values
((select id from request where id=1), (select id from products where partNumber='13'), 3),
((select id from request where id=1), (select id from products where partNumber='15'), 2);

