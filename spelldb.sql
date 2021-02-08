create database spells ;
use spells;

create table users(
Id int not null primary key auto_increment,
name varchar(50) not null,
class varchar(50) not null,
level int (2) not null,
spell_slots int(3) not null
);

select * from users;

insert users
(name, class, level, spell_slots)
values
('Derk','warlock','8','2')
;

create table user_spells(
id int not null primary key auto_increment,
foreign key (userid) references Users(Id),
foreign key (spell_id) references spell(id)
);

create table spell(
id int not null primary key auto_increment,
name varchar (50) not null,
school_type varchar(20) not null,
classes varchar (100) not null,
level varchar (10) not null,
component varchar(25) not null,
description varchar (4000) not null,
distance varchar (25) not null,
time varchar (25) not null, 
duration varchar (25) not null
);

select * from spell;

insert spell
(name, school_type, classes, level, component, description, distance, time, duration)
values
('eldritch blast', 'evocation', 'warlock', '0', 'V,S', 'A beam of crackling energy streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 force damage.
The spell creates more than one beam when you reach higher levels: two beams at 5th level, three beams at 11th level, and four beams at 17th level. You can direct the beams at the same target or at different ones. Make a separate attack roll for each beam.', 
'120', 'instantaneous','instantaneous');