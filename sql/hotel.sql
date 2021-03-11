-- 
-- Hotel Database Assignment
-- Author: Joseph Moran
-- Due Date 3/12/2021
--

-- Creates a new database named hotel
CREATE DATABASE hotel;

-- Uses the databse and sets us up to create our table
USE hotel;

-- Creates the table loactions with fields:
-- id, roomIndex(will be indexed), occupied, housekeeping, type
-- All fields set to not null
create table roomStatus
(
	id int primary key auto_increment,
	roomNumber int not null,
	occupied varchar(1) not null,
	housekeeping varchar(1) not null,
	type varchar(10) not null 
);




-- Creates an index on the roomIndex column in the roomStatus table
create index idx_roomNumber on roomStatus(roomNumber);

-- Describes the table roomStatus
describe roomStatus;

-- Inserts all of our hotel data into the table
insert into roomStatus(roomNumber, occupied, housekeeping, type) values
(300, "y", "n", "suite"),
(310, "n", "n", "suite"),
(475, "y", "y", "king"),
(477, "n", "y", "queen"),
(578, "y", "y", "double"),
(1200, "y", "y", "single"),
(1201, "y", "y", "single"),
(1000, "n", "n", "queen"),
(1100, "y", "y", "double"),
(344, "y", "n", "suite"),
(299, "n", "n", "king"),
(888, "y", "y", "queen"),
(932, "n", "n", "king"),
(1501, "y", "y", "queen"),
(399, "n", "y", "suite"),
(1700, "y", "y", "king"),
(1766, "y", "y", "double"),
(1753, "n", "n", "double")
;




-- Display all Kings that are clean (room #, type)
select roomNumber, type from roomStatus where type = "king" and housekeeping = "y";

-- Display all rooms that occupied (room #, type, housekeeping)
select roomNumber, type, housekeeping from roomStatus where occupied = "y";

-- Display all dirty rooms (room #, occupied, type)
select roomNumber, occupied, type from roomStatus where housekeeping = "n";

-- Display all suites (entire record except ID)
select roomNumber, occupied, housekeeping, type from roomStatus where type = "suite";

-- Display all rooms sorted by room number and room type (entire record except ID)
select roomNumber, occupied, housekeeping, type from roomStatus order by roomNumber asc, type asc;

-- Display all unoccupied rooms that need cleaning (room #, type)
select roomNumber, type from roomStatus where occupied = "n" and housekeeping = "n";



-- Drops our database
drop database hotel;