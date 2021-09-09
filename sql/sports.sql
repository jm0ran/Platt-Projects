-- 
-- Sport Survey DB Assignment
-- Author: Joseph Moran
-- Date 9/9/2021
--

-- Creates a new database
CREATE DATABASE sportSurvey;

-- Uses the databse and sets us up to create our table
USE sportSurvey;

-- Creates the table loactions with fields (All varchars as specified in prompt):
-- id, firstName, lastName, age, gender, classYear, shop, sport1, sport2, sport3
-- All fields set to not null excpet sport which can be empty for students who do not play a sport
create table surveyData
(
	id int primary key auto_increment,
	firstName varchar(20) not null,
	lastName varchar(20) not null,
	age varchar(20) not null,
	gender varchar(20) not null,
	classYear varchar(20) not null,
	shop varchar(20) not null,
	sport1 varchar(20) not null,
    sport2 varchar(20) not null,
    sport3 varchar(20) not null
);

-- Describes the table CarsData
describe surveyData;

-- Inserts all of our data about the cars into the table
insert into surveyData(firstName, lastName, age, gender, classYear, shop, sport1, sport2, sport3) values
	("Joseph", "Moran", "18", "Male", "Senior", "IT", "XC", "NA", "NA"),
    ("Mario", "Goodman", "16", "Male", "Sophmore", "AC", "Basketball", "Football", "NA"),
    ("Lynda", "Nicholas", "17", "Female", "Junior", "IT", "Baseball", "Track", "NA"),
    ("Tanya", "Figueroa", "18", "Female", "Senior", "AU", "Basketball", "NA", "NA"),
    ("Lucia", "Sandoval", "18", "Female", "Senior", "EL", "XC", "Basketball", "Football"),
    ("Phillip", "Knight", "17", "Male", "Junior", "IT", "Track", "NA", "NA"),
    ("Ella", "Brewer", "17", "Female", "Junior", "EL", "Football", "NA", "NA"),
    ("Patricia", "Swanson", "18", "Female", "Senior", "IT", "Volleyball", "Softball", "NA"),
    ("Roderick", "Tran", "17", "Male", "Senior", "EL", "Basketball", "NA", "NA"),
    ("Eloise", "Maxwell", "18", "Female", "Senior", "AC", "XC", "NA", "NA"),
    ("Terrance", "Sutton", "16", "Male", "Sophmore", "AU", "XC", "NA", "NA"),
    ("Ida", "Hanson", "16", "Female", "Sophmore", "AC", "Track", "NA", "NA"),
    ("Gina", "Reynolds", "18", "Female", "Senior", "EL", "Track", "NA", "NA"),
    ("Boyd", "Goodman", "18", "Male", "Senior", "PH", "Football", "NA", "NA"),
    ("Hilda", "Mitchell", "17", "Female", "Junior", "SA", "Football", "NA", "NA"),
    ("Enrique", "Duncan", "18", "Male", "Senior", "EL", "Basketball", "NA", "NA"),
    ("Leonard", "Sutton", "17", "Male", "Senior", "AC", "Baseball", "NA", "NA"),
    ("Guy", "Neal", "18", "Male", "Senior", "IT", "XC", "Volleyball", "NA"),
    ("Elbert", "Barber", "15", "Male", "Senior", "AU", "Basketball", "NA", "NA"),
    ("Rosemarie", "Freeman", "18", "Female", "Senior", "AC", "NA", "NA", "NA"),
    ("Dixie", "Barker", "15", "Female", "Senior", "EL", "NA", "NA", "NA"),
    ("Megan", "Ferguson", "16", "Female", "Sophmore", "IT", "NA", "NA", "NA"),
    ("Ignacio", "Daniel", "16", "Male", "Sophmore", "IT", "XC", "Track", "NA"),
    ("Roy", "Cobb", "16", "Male", "Sophmore", "SA", "XC", "Baseball", "Football"),
    ("Nicole", "Barrett", "15", "Female", "Senior", "AC", "NA", "NA", "NA"),
    ("Orville", "Colon", "15", "Male", "Senior", "IT", "Football", "NA", "NA"),
    ("Eva", "Gibbs", "15", "Female", "Senior", "PH", "Basketball", "Volleyball", "Track"),
    ("Louis", "Neal", "15", "Male", "Senior", "SA", "XC", "Football", "NA"),
    ("Lester", "Clarke", "16", "Male", "Sophmore", "IT", "NA", "NA", "NA"),
    ("Kari", "Malone", "16", "Female", "Sophmore", "AC", "Basketball", "NA", "NA"),
    ("Kelli", "Webb", "17", "Female", "Junior", "AU", "Volleyball", "NA", "NA"),
    ("Clark", "Nelson", "17", "Male", "Junior", "EL", "NA", "NA", "NA"),
    ("Raul", "Adkins", "17", "Male", "Senior", "IT", "XC", "NA", "NA"),
    ("Anne", "Douglas", "18", "Female", "Senior", "SA", "Basketball", "NA", "NA"),
    ("Justin", "Matthews", "18", "Male", "Senior", "AC", "XC", "Football", "NA"),
    ("Mack", "Kennedy", "18", "Male", "Senior", "AU", "Baseball", "NA", "NA"),
    ("Roger", "Mckinney", "17", "Male", "Junior", "IT", "Baseball", "Track", "NA"),
    ("Lorene", "Herrera", "19", "Female", "Senior", "IT", "Basketball", "NA", "NA"),
    ("Elena", "Parks", "18", "Female", "Senior", "SA", "Volleyball", "Softball", "NA"),
    ("Silvia", "Hudson", "14", "Female", "Freshman", "IT", "NA", "NA", "NA"),
    ("Elijah", "Valdez", "18", "Male", "Senior", "IT", "Basketball", "Baseball", "NA"),
    ("Erika", "Olson", "14", "Female", "Freshman", "AC", "Baseball", "NA", "NA"),
    ("Kelli", "Quinn", "14", "Female", "Freshman", "AC", "Track", "NA", "NA"),
    ("Jimmie", "Stevens", "18", "Male", "Senior", "IT", "XC", "NA", "NA"),
    ("Misty", "Howell", "18", "Female", "Senior", "AU", "Volleyball", "NA", "NA"),
    ("Kent", "Moss", "16", "Male", "Sophmore", "EL", "NA", "NA", "NA"),
    ("Kathryn", "Cook", "17", "Female", "Senior", "IT", "Basketball", "Softball", "NA"),
    ("Milton", "Patton", "18", "Male", "Senior", "EL", "Baseball", "NA", "NA"),
    ("Gerard", "Bailey", "18", "Male", "Senior", "AU", "Football", "Track", "XC"),
    ("Sheryl", "Rhodes", "17", "Female", "Junior", "AU", "Baseball", "NA", "NA"),
    ("Kristina", "Brown", "17", "Female", "Junior", "PH", "NA", "NA", "NA"),
    ("Rochelle", "Davidson", "17", "Male", "Senior", "AC", "Baseball", "NA", "NA"),
    ("Bobby", "Neal", "18", "Male", "Senior", "IT", "Basketball", "NA", "NA"),
    ("Mona", "Hawkins", "18", "Female", "Senior", "AU", "NA", "NA", "NA"),
    ("Della", "Garcia", "18", "Female", "Senior", "IT", "Volleyball", "NA", "NA"),
    ("Cheryl", "Lawson", "16", "Female", "Sophmore", "IT", "XC", "Basketball", "NA"),
    ("Kent", "Wise", "16", "Male", "Sophmore", "EL", "Baseball", "NA", "NA"),
    ("Janet", "Hayes", "16", "Female", "Sophmore", "AU", "Softball", "NA", "NA"),
    ("Ervin", "Santiago", "18", "Male", "Senior", "SA", "Football", "NA", "NA"),
    ("Darrin", "Schwartz", "17", "Male", "Junior", "IT", "Baseball", "NA", "NA"),
    ("Dale", "Arnold", "17", "Male", "Senior", "SA", "NA", "NA", "NA"),
    ("Tom", "Welch", "18", "Male", "Junior", "IT", "Football", "Track", "NA"),
    ("Vera", "Luna", "17", "Female", "Junior", "AU", "Basketball", "Track", "NA"),
    ("Sergio", "Murphy", "15", "Male", "Freshman", "IT", "Baseball", "NA", "NA"),
    ("Enrique", "Glover", "18", "Male", "Senior", "EL", "NA", "NA", "NA"),
    ("Emanuel", "Reese", "18", "Male", "Senior", "IT", "Basketball", "NA", "NA"),
    ("Faith", "Mendoza", "15", "Female", "Freshman", "IT", "Softball", "NA", "NA"),
    ("Daniel", "Klein", "15", "Male", "Freshman", "EL", "NA", "NA", "NA"),
    ("Ricky", "Vasquez", "18", "Male", "Senior", "AC", "Basketball", "NA", "NA"),
    ("Sonya", "Miles", "18", "Female", "Senior", "IT", "Volleyball", "NA", "NA"),
    ("Erick", "Cannon", "14", "Male", "Freshman", "AU", "Basketball", "Baseball", "NA"),
    ("Tomas", "Singleton", "14", "Male", "Freshman", "SA", "Football", "NA", "NA"),
    ("Dianne", "Gonzales", "13", "Female", "Freshman", "IT", "NA", "NA", "NA"),
    ("Amelia", "Nguyen", "18", "Female", "Senior", "SA", "Softball", "NA", "NA"),
    ("Emmett", "Huff", "18", "Male", "Senior", "IT", "XC", "Baseball", "NA"),
    ("Belinda", "Sherman", "17", "Female", "Junior", "SA", "NA", "NA", "NA"),
    ("Cornelius", "Holmes", "17", "Male", "Senior", "IT", "Football", "Track", "NA"),
    ("Phyllis", "Grant", "16", "Female", "Sophmore", "AC", "Baseball", "NA", "NA"),
    ("Gayle", "Hansen", "17", "Female", "Junior", "AU", "Softball", "NA", "NA"),
    ("Terry", "Warner", "18", "Male", "Senior", "AU", "Football", "Track", "NA"),
    ("Caleb", "Bowers", "16", "Male", "Sophmore", "EL", "Baseball", "NA", "NA"),
    ("Jason", "Bowns", "16", "Male", "Sophmore", "SA", "Track", "NA", "NA"),
    ("Mitchell", "Rodgers", "15", "Male", "Freshman", "IT", "NA", "NA", "NA"),
    ("Harry", "Fox", "15", "Male", "Freshman", "IT", "Basketball", "NA", "NA"),
    ("Benny", "Bradley", "15", "Male", "Freshman", "EL", "NA", "NA", "NA"),
    ("Mark", "Cunningham", "18", "Male", "Senior", "AU", "Basketball", "NA", "NA"),
    ("Nelson", "Gonzalez", "17", "Male", "Senior", "AC", "Basketball", "NA", "NA"),
    ("Kyle", "Santos", "17", "Male", "Junior", "SA", "XC", "Volleyball", "NA"),
    ("Paulette", "Sutton", "18", "Female", "Senior", "IT", "Baseball", "Football", "NA"),
    ("Cristina", "Hart", "18", "Female", "Senior", "EL", "Football", "NA", "NA"),
    ("Timmy", "Gomez", "16", "Male", "Sophmore", "IT", "XC", "Baseball", "NA"),
    ("Matthew", "Bates", "16", "Male", "Sophmore", "EL", "NA", "NA", "NA"),
    ("Candace", "Maxwell", "16", "Female", "Sophmore", "SA", "NA", "NA", "NA"),
    ("Clara", "Page", "19", "Female", "Senior", "IT", "Softball", "Track", "NA"),
    ("Marion", "Blair", "18", "Female", "Senior", "AC", "Basketball", "NA", "NA"),
    ("Betsy", "Harmon", "15", "Female", "Freshman", "AU", "Volleyball", "NA", "NA"),
    ("Ian", "Todd", "15", "Male", "Freshman", "EL", "XC", "Baseball", "NA"),
    ("Johnathan", "Fox", "15", "Male", "Freshman", "EL", "Basketball", "NA", "NA"),
    ("Shari", "Newton", "16", "Female", "Sophmore", "IT", "Football", "NA", "NA"),
    ("Marsha", "Higgins", "16", "Female", "Sophmore", "AC", "Baseball", "NA", "NA");


--General Selection of all Students
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData;

-- Query for all Freshman playing sports
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData where classYear = "Freshman" and sport1 != "NA";

-- Query for all Seniors playing two sports
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData where classYear = "Senior" and sport2 != "NA";

-- Query for all males playing 3 sports
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData where gender = "Male" and sport3 != "NA";

-- Query for all females playing 1 sport
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData where gender = "Female" and sport1 != "NA" and sport2 = "NA";

-- Query for all students running XC
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData where sport1 = "XC" or sport2 = "XC" or sport3 = "XC";

-- Query for all female students who are upper classmen playing softball
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData where (classYear = "Junior" or classYear = "Senior") and (sport1 = "Softball" or sport2 = "Softball" or sport3 = "Softball");

-- Query for all male students who are under classmen playing multiple sports.
select concat(firstName, " ", lastName) as "Student Name", shop as Shop, age as Age, gender as Gender, classYear as Year, sport1 as "Sport 1", sport2 as "Sport 2", sport3 as "Sport 3" from surveyData where (classYear = "Junior" or classYear = "Senior") and sport2 != "NA";

-- Drops our database
drop database surveyData;