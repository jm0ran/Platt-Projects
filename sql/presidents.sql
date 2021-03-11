-- 
-- President Database Assignment
-- Author: Joseph Moran
-- Due Date 3/17/2021
--

-- Important Considerations
-- 1. Only acknowledged major wars from a list I found on google
-- 2. For presidents with middle names I tacked this on to their first name for example, John Adams and John Quincy Adams


-- Creates a new database named presidents
CREATE DATABASE presidents;

-- Uses the databse and sets us up to create our table
USE presidents;

-- Creates the table presidentInfo to store our data
-- All fields set to not null
create table presidentInfo
(
	id int primary key auto_increment,
	presidentialNumber int not null,
	lastName varchar(20) not null,
	firstName varchar(20) not null,
	party varchar(50) not null,
	nickname varchar(50) not null,
	birthYear varchar(5) not null,
	deathYear varchar(5) not null,
	terms varchar(5) not null,
	decade varchar(5) not null,
	otherPositions varchar(255) not null,
	majorAccomplishments varchar(255) not null,
	warsDuringOffice varchar(80) not null
);




-- Describes the table presidentInfo
describe presidentInfo;

-- Inserts all of our president data into the table
insert into presidentInfo(presidentialNumber, lastName, firstName, party, nickname, birthYear, deathYear, terms, decade, otherPositions, majorAccomplishments, warsDuringOffice) values
-- Dummy Data line temporary
(1, "hold", "hold", "hold", "hold", "hold", "hold", "hold", "hold", "hold", "hold", "hold" )
;




-- Temporary overall select
select * from presidentInfo;


-- Drops our database
drop database presidents;