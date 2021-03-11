-- 
-- SQL Table Assignment #2
-- Author: Joseph Moran
-- Date 12/18/2020
--

-- Creates a new database
CREATE DATABASE customer;

-- Uses the databse and sets us up to create our table
USE customer;

-- Creates the table loactions with fields:
-- Id, Last_Name, First_Name, Street, City, State, Zip_Code, Birth_Date, Telephone_Number
-- All fields set to not null
create table customerData
(
	id int primary key auto_increment,
	Last_Name varchar(20) not null,
	First_Name varchar(20) not null,
	Street varchar(30) not null,
	City varchar(20) not null,
	State varchar(2) not null,
	Zip_Code varchar(20) not null,
	Birth_Date date not null,
	Telephone_Number varchar(20) not null
);

-- Creates an multi index called idx_Last_Name on Last_Name from customerData
create index idx_Last_Name on customerData(Last_Name);

-- Creates an multi index called idx_State on State from customerData	
create index idx_State on customerData(State);

-- Describes the table customerData
describe customerData;

-- Inserts the 20 rows of data into the table
insert into customerData(Last_Name, First_Name, Street, City, State, Zip_Code, Birth_Date, Telephone_Number) values
	("Luna", "Ian", "5 Thorne Court", "Bristol", "CT", "09985", "2001-09-10", "203-778-5290"),
	("Fernandez", "Cornelius", "108 Mockinson Ave", "Wellington", "FL", "21401", "1980-09-18", "718-642-2942"),
	("Burke", "Eva", "1 Hillside Drive", "Odenton", "MD", "80003", "1983-07-29", "770-276-2550"),
	("Quinn", "Ivan", "108 Mockinson Ave", "Providence", "RI", "07631", "1984-01-20", "646-394-8034"),
	("Dennis", "Antonio", "940 Homestead Court", "Clifton", "NJ", "11553", "1985-02-13", "770-696-0276"),
	("Bates", "Israel", "8025 Grand Court", "Ontario", "CA", "14701", "1987-10-22", "863-288-3662"),
	("Johnson", "Randolph", "7894 Beaver Ridge St.", "Lakewood", "NJ", "64151", "1990-07-05", "301-270-5166"),
	("Hogan", "Lorene", "7004 Redwood Ave.", "Detroit", "MI", "92111", "1993-10-21", "267-752-3490"),
	("Payne", "Lorenzo", "8318 Franklin Street", "Clarksburg", "WV", "75604", "1996-01-23", "316-466-6998"),
	("Copeland", "Megan", "7234 Andover St.", "New Castle", "PA", "97402", "2009-10-05", "702-227-9402"),
	("Reese", "Colin", "60 Forest Street", "Madisonville", "KY", "98801", "1981-11-24", "530-259-0629"),
	("Romero", "Elbert", "108 Mockinson Ave", "Findlay", "OH", "21401", "1986-02-05", "425-444-6637"),
	("Newman", "Ben", "7905 Green Hill Dr.", "Lenoir", "NC", "02138", "1987-04-08", "469-235-8032"),
	("Colon", "Ora", "988 Alton Ave.", "Alliance", "OH", "20886", "1987-07-16", "203-778-5290"),
	("Clayton", "Tim", "9718 Courtland Ave.", "Mason", "OH", "29841", "1989-06-21", "786-973-7053"),
	("Wright", "Crystal", "131 Euclid Drive", "Brick", "NJ", "73072", "1992-02-04", "248-719-6852"),
	("Poole", "Arthur", "9197 Kirkland St.", "Olney", "MD", "28173", "1999-05-18", "719-240-1195"),
	("Reese", "Melvin", "548 Amherst Dr.", "Fall River", "MA", "14120", "2004-06-15", "603-286-8518"),
	("Berry", "Willard", "8104 E. Wild Horse Ave.", "Rowlett", "TX", "02860", "2008-07-28", "978-880-9227"),
	("Porter", "Claire", "468 Brook Dr.", "Torrington", "CT", "52761", "2004-12-02", "217-569-7343");

-- Creates a selection with all of the fields from CustomerData
select * from customerData;

-- Drops the database customer
drop database customer;