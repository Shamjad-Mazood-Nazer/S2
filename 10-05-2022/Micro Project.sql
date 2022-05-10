create database microproject;

use microproject;

create table tbl_vehicle(
vehicle_id int primary key auto_increment,
vehicle_name varchar(20),
vehicle_category varchar(20)
);

create table tbl_user(
user_id int primary key auto_increment,
user_name varchar(20),
user_phone int,
user_email varchar(30),
user_passwd varchar(15),
user_gender varchar(12),
user_address varchar(50),
user_id_proof varchar(25)
);

create table tbl_admin(
admin_id int auto_increment primary key,
mail_id varchar(25),
admin_password varchar(15)
);

create table tbl_booked(
book_id int auto_increment primary key,
vehicle_id int references tbl_vehicle,
user_id int references tbl_user
);

