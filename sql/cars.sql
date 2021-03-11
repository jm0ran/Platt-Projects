-- 
-- CAR DB Assignment
-- Author: Joseph Moran
-- Date 1/19/2021
--

-- Creates a new database
CREATE DATABASE Cars;

-- Uses the databse and sets us up to create our table
USE Cars;

-- Creates the table loactions with fields:
-- id, year, make, model, cycl, engine, mpg, price, doors, origin
-- All fields set to not null
create table CarsData
(
	id int primary key auto_increment,
	year int not null,
	make varchar(20) not null,
	model varchar(20) not null,
	cycl int not null,
	engine varchar(20) not null,
	mpg int not null,
	price int not null,
	doors int not null,
	origin varchar(20) not null
);

-- Creates an multi index called idx_Make on make from CarsData
create index idx_Make on CarsData(make);

-- Creates an multi index called idx_Model on model from CarsData
create index idx_Model on CarsData(model);

-- Describes the table CarsData
describe CarsData;

-- Inserts all of our data about the cars into the table
insert into CarsData(year, make, model, cycl, engine, mpg, price, doors, origin) values
	("2012", "Nissan", "Versa", "4", "1.6", "31", "10990", "4", "Japan"),
	("2013", "Nissan", "Versa", "4", "1.6", "31", "11990", "4", "Japan"),
	("2013", "Chevrolet", "Spark", "4", "1.2", "35", "12185", "2", "America"),
	("2013", "Smart", "Fortwo", "3","1", "36", "12490", "2", "Germany"),
	("2012", "Hyundai", "Accent", "4", "1.6", "32", "12545", "4", "South Korea"),
	("2013", "Ford", "Fiesta", "4", '1.6', "33", "13400", "4", "America"),
	("2012", "Kia", "Rio", "4", "1.6", "33", "13600", "4", "South Korea"),
	("2012", "Kia", "Rio5", '4', "1.6", "33", "13600", "4", "South Korea"),
	("2012", "Fiat", "500", '4', "1.4", "34", "15500", "2", "Italy"),
	("2012", "VW", "Jetta", "4", "2", "29", "15515", "4", "Germany"),
	("2013", "VW", "Jetta", "4", "2", "29", "15454", "4", "Germany"),
	("2012", "Mitsubishi", "Lancer", "4", "2", "29", "15695", "4", "Japan"),
	("2013", "Scion", "xD", "4", "1.8", "30", "15745", "4", "America"),
	("2013", "Dodge", "Grand Caravan", "6", "3.6", "21", "22030", "4", "America"),
	("2013", "Nissan", "Frontier", "6", "4", "19", "22030", "4", "Japan"),
	("2013", "Ford", "Mustang", "6", "3.7", "24", "22200", "2", "America"),
	("2012", "Ferrari", "California", '8', "4.3", "16", "195840", "2", "Italy"),
	("2013", "Ferrari", "California", "8", "4.3", "16", "198190", "2", "Italy"),
	("2013", "Mercedes", "SLS-AMG", "8", "6.2", "16", "199500", "2", "Germany"),
	("2012", "Ferrari", "458 Italia", "8", "4.5", "15", "229825", "2", "Italy"),
	("2012", "Bentley", "Mulsanne", "8", "6.8", "14", "290000", "4", "United Kingdom"),
	("2013", "Nissan", "GT-R", "6", "3.8", "19", "96820", "2", "Japan"),
	("2012", "BMW", "ActiveHybrid 750", "6", "3.8", "19", "96820", "2", "Germany"),
	("2013", "BMW", "M6", "8", "4.4", "17", "108350", "2", "Germany"),
	("2013", "Audi", "S8", "8", "4", "20", "110000", "4", "Germany"),
	("2013", "Lexus", "LX 570", "8", "5.7", "14", "81530", "4", "Japan"),
	("2013", "BMW", "750", "8", "4.4", "21", "86800", "4", "Germany"),
	("2012", "BMW", "ActiveHybrid 5", "6", "3", "26", "60950", "4", "Germany"),
	("2012", "VW", "Touareg Hybrid", "6", "3", "22", "61995", "4", "Germany"),
	("2012", "Lotus", "Evora", "6", "3.5", "22", "66100", "2", "United Kingdom"),
	("2012", "Porsche", "Cayenne Hybrid", "6", "3", "22", "69000", "4", "Germany");


-- 1. All cars that are American made. 
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where origin = "America";

-- 2. All cars that are German made.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where origin = "Germany";

-- 3. All cars with at least 20 MPG and sorted by price in ascending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where mpg >= 20 order by price asc;

-- 4. All cars that are priced > 10K and < 20K sorted by model name descending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where price > 10000 and price < 20000 order by model desc;

-- 5. All cars that are priced > 20K and < 30K sorted by price in ascending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where price > 20000 and price < 30000 order by price asc;

-- 6. All cars that priced > 30K sorted by MPG in ascending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where price > 30000 order by mpg asc;

-- 7. All German cars sorted by make ascending order that is 6 cylinders.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where origin = "Germany" and cycl = "6" order by make asc;

-- 8. All cars that get over 30 MPG sorted by model descending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where mpg > 30 order by model desc;

-- 9. All cars that get < 20 MPG sorted by price descending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where mpg < 20 order by price desc;

-- 10. All 8 cylinder cars sorted by make descending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData where cycl = 8 order by make desc;

--11. All cars sorted by make descending and model ascending order.
select year, make, model, cycl, engine, mpg, price, doors, origin from CarsData order by make desc, model asc;

-- Drops our database
drop database Cars;
