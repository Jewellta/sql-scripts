create database grocery;

use grocery;

create table user(
Id int not null primary key auto_increment,
Name varchar(50) not null,
foreign key (shop_list_id) references shop_list(id)
);

create table recipe(
id int not null primary key auto_increment,
items varchar(100) not null,
cook_time int(5) not null,
appliances varchar(100) not null,
feeds varchar(25))
;

create table shop_list_items(
id int not null primary key auto_increment,
foreign key(item_id) references item(id),
foreign key(list_id) references shop_list(id);

create table shop_list(
id int not null primary key auto_increment,
name varchar(50) not null,
date varchar(75) not null,
foreign key (user_id) references user(id)
);

create table items(
id int not null primary key auto_increment,
name varchar(100)not null,
price int(10),
quantity int(5),
store varchar(25)
);

create table recipe_items(
id int not null primary key auto_increment,
foreign key(recipe_id) references recipe(id),
foreign key(items_id) references items(id)
);