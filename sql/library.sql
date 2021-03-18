-- 
-- Library Database Assignment
-- Author: Joseph Moran
-- Due Date 3/17/2021
--

-- Creates a new database named library
create database library;

-- Uses the databse and sets us up to create our table
use library;

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
	checkOutDate datetime not null, 
	dueDate datetime
);


-- Describes the table books
describe books;

-- Inserts all of our library data into the table
insert into books(bookTitle, bookAuthor, firstName, lastName, checkOutDate, dueDate) values
("Beginning PHP 5.3", "Matt Doyle", "John", "Madden", now(), date_add(now(), interval 21 day)),
("Harry Potter and the Sorcerer's Stone", "J.K. Rowling", "Bobbie", "Barnett", now(), date_add(now(), interval 21 day)),
("Harry Potter and the Chamber of Secrets", "J.K. Rowling", "Ira", "Hill", now(), date_add(now(), interval 21 day)),
("Harry Potter and the Prisoner of Azkaban", "J.K. Rowling", "Sophia", "Goodman", now(), date_add(now(), interval 21 day)),
("Percy Jackson and the Lightning Theif", "Rick Riordan", "Ben", "Ball", now(), date_add(now(), interval 21 day)),
("Percy Jackson and the Sea of Monsters", "Rick Riordan", "Joy", "Burgess", now(), date_add(now(), interval 21 day)),
("Percy Jackson and the Titan's Curse", "Rick Riordan", "Joseph", "Gardner", now(), date_add(now(), interval 21 day)),
("The Hunger Games", "Suzanne Collins", "Carl", "Lindsey", now(), date_add(now(), interval 21 day)),
("Catching Fire", "Suzanne Collins", "Lynn", "King", now(), date_add(now(), interval 21 day)),
("Mockingjay", "Suzanne Collins", "Edna", "Howard", now(), date_add(now(), interval 21 day))
;




-- 1. All books in database
select concat(firstName, " ", lastName) as "Member", concat('"', bookTitle, '"', " by ", bookAuthor) as "Books", date_format(checkOutDate, "%M %D, %Y") as "Check Out", date_format(dueDate, "%M %D, %Y") as "Due Date" from books;

-- 2. All books titles that start with the letter B
select concat(firstName, " ", lastName) as "Member", concat('"', bookTitle, '"', " by ", bookAuthor) as "Books Starting With B", date_format(checkOutDate, "%M %D, %Y") as "Check Out", date_format(dueDate, "%M %D, %Y") as "Due Date" from books where bookTitle like "b%";

-- 3. All books in alphabetical order by title
select concat(firstName, " ", lastName) as "Member", concat('"', bookTitle, '"', " by ", bookAuthor) as "Books (Sorted By Title)", date_format(checkOutDate, "%M %D, %Y") as "Check Out", date_format(dueDate, "%M %D, %Y") as "Due Date" from books order by bookTitle asc;

-- 4. All books in alphabetical order by Author
select concat(firstName, " ", lastName) as "Member", concat('"', bookTitle, '"', " by ", bookAuthor) as "Books (Sorted By Author)", date_format(checkOutDate, "%M %D, %Y") as "Check Out", date_format(dueDate, "%M %D, %Y") as "Due Date" from books order by bookAuthor asc;




-- Drops our database
drop database library;