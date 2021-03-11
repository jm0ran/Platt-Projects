-- 
-- SQL Introduction To Tables
-- Author: Joseph Moran
-- Date 12/16/2021
--

-- Creates a new database
CREATE DATABASE intro;

-- Uses the databse and sets us up to create our table
USE intro;

-- Creates the table loactions with fields:
-- Id, First_Name, Last_Name, Address, City, State, Zip_Code
-- All fields set to not null
create table locations
( 
	id int primary key auto_increment,
	First_Name varchar(20) not null,
	Last_Name varchar(20) not null,
	Address varchar(50) not null,
	City varchar(30) not null,
	State varchar(2) not null,
	Zip_Code int not null
);

-- Describes the table
describe locations;

-- Inserts the Data Into the Table
insert into locations(First_Name, Last_Name, Address, City, State, Zip_Code) values
("Stephen", "Angelella", "2788 Marion Street", "Bellmore", "NY", 11710),
("Allen", "Attaway", "PO Box 643", "Piscataway", "NJ", 08855),
("Baron", "Ballester", "186 Lexington Avenue","Westwood", "NJ", 07675),
("George", "Bartels", "77 Allen Road", "Rockville Centre", "NY", 11570),
("Michael", "Bartolome", "228 South 17th Avenue","Manville","NJ", 08835), 
("Hugh","Bentley","7 Holly Treee Lane", "East Islip", "NY", 11730), 
("Robert", "Bielsky","931 Peninsula Blvd","Woodmere", "NY", 11598), 
("George","Botsch","511 Rockaway Street", "West Islip", "NY", 11795), 
("Duane","Burrell", "22 Van Buskirk Rd", "Teaneck", "NJ", 07666), 
("Michael", "Caldarella","108 Kemah-Mecca Lake Road", "Newton","NJ", 07860);

-- Selects and queries the entire database
select * from locations;

-- Drops Database
drop database intro;