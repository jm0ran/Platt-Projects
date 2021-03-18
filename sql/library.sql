-- 
-- Library Database Assignment
-- Author: Joseph Moran
-- Due Date 3/17/2021
--

-- Creates a new database named library
CREATE DATABASE library;

-- Uses the databse and sets us up to create our table
USE library;

-- Creates the table loactions with fields:
-- id, bookTitle, bookAuthor, firstName, lastName, checkOutDate, dueDate
-- All fields set to not null
create table books
(
	id int primary key auto_increment,
	bookTitle varchar(50) not null,
    bookAuthor varchar(50) not null,
    firstName varchar(25) not null,
    lastName varchar(25) not null,
    checkOutDate date_format() not null, 
    dueDate date_format()
);


-- Describes the table books
describe books;

-- Inserts all of our library data into the table
insert into books(bookTitle, bookAuthor, firstName, lastName, checkOutDate, dueDate) values
()
;




-- Display all Kings that are clean (room #, type)
select * from books;



-- Drops our database
drop database library;