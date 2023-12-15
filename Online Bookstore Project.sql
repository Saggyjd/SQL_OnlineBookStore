SHOW DATABASES;

CREATE DATABASE bookstore;

USE bookstore;

CREATE TABLE Books(
book_id int primary key,
title varchar(20),
author varchar(20),
publication_year year,
price decimal(10,2),
available_quantity int
);
DESC books;

CREATE TABLE Customers(
customer_id int primary key,
first_name varchar(10),
last_name varchar(10),
email varchar(25),
registratin_date date
);
DESC customers;

CREATE TABLE Orders(
order_id int primary key,
customer_id int,
order_date date,
total_amount decimal(10,2)
);
alter table Orders add constraint foreign key (customer_id) REFERENCES customers(customer_id);
DESC orders;

CREATE TABLE order_details(
order_id int,
book_id int,
quantity int,
subtotal int,
CONSTRAINT order_id FOREIGN KEY (Order_id) REFERENCES orders(order_id),
CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES books(book_id)
);

desc order_details;
show create table order_details;