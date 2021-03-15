-- 
-- President Database Assignment
-- Author: Joseph Moran
-- Due Date 3/17/2021
--

-- Creates a new database named presidents
CREATE DATABASE presidents;

-- Uses the databse and sets us up to create our table
USE presidents;

-- Creates the table presidentInfo to store our data
-- All fields set to not null
create table presidentInfo
(
	presidentialNumber int primary key not null,
	lastName varchar(20) not null,
	firstName varchar(20) not null,
	party varchar(50) not null,
	nickname varchar(50) not null,
	birthYear varchar(5) not null,
	deathYear varchar(5),
	terms varchar(5) not null,
	decade varchar(5) not null,
	otherPositions varchar(255) not null,
	majorAccomplishments varchar(255) not null,
	warsDuringOffice varchar(80) not null
);


-- Creates an index on lastName
create index idx_lastName on presidentInfo(lastName);

-- Creates an index on party
create index idx_party on presidentInfo(party);



-- Describes the table presidentInfo
describe presidentInfo;

-- Inserts all of our president data into the table
insert into presidentInfo(presidentialNumber, lastName, firstName, party, nickname, birthYear, deathYear, terms, decade, otherPositions, majorAccomplishments, warsDuringOffice) values
(1, "Washington", "George", "Independent", "Father of His Country", "1732", "1799", "2", "1780", "Commander of the Continental Army, President of the Constitutional Convention", "First President of the United States,Succeeded with the American Revolution, Helped draft the Constitution", "Revolutionary War" ),
(2, "Adams", "John", "Whig Party", "Atlas of Independence", "1735", "1826", "1", "1790", "Vice President to George Washington, Member of Conventional Congress, Commissioner to France, Minister to the Netherlands, Minister to England", "Helped in Revolution, Signer of the Treaty of Paris, Author of the Massachusetts Constitution, Ambassador to the Court of St.", "none"),
(3, "Jefferson", "Thomas", "Democratic-Republican Party", "Apostle of the Constitution", "1743", "1826", "2", "1800", "Virginia House of Burgesses Member, Continental Congress Member, Governor of Virginia, Diplomat in Europe", "Co-founder of the Democratic-Republican party, Stabilized U.S. Economy, Doubled Size of U.S. with the Louisiana Purchase, Founded University of Virginia", "none"),
(4, "Madison", "James", "Democratic-Republican Party", "America’s First Graduate Student", "1751", "1836", "2", "1800", "U.S. Secretary of State, Representative of Virginia", "Co-founder of the Democratic-Republican party, Created Framework for Constitution, Signed a declaration of war against Great Britain to begin the War of 1812", "War of 1812"),
(5, "Monroe", "James", "Democratic-Republican Party", "The Era of Good Feelings President", "1758", "1831", "2", "1810", "Governor of Virginia, U.S. Secretary of War, Ambassador to U.K., U.S. Secretary of State, Ambassador to France, Virginia Senator", "Major westward expansion, The Monroe Doctrine, Fought in the Revolutionary War", "none"),
(6, "Adams", "John", "Whig Party", "JQA", "1767", "1848", "1", "1820", "Massachusetts Representative, Ambassador to Russia, Secretary of State, Massachusetts Senator", "First Minister of Russia, Head of Delegation Charged With the Treaty of Ghent", "none"),
(7, "Jackson", "Andrew", "Democratic Party", "King Mob", "1767", "1845", "2", "1820", "Tennessee Senator, Military Governor of Spanish Florida", "Elected by mass appeal, Established the principle that states may not disregard federal law", "none"),
(8, "Buren", "Martin", "Democratic Party", "Little Magician", "1782", "1862", "1", "1830", "Secretary of State, Vice President, Governor of New York, New York Senator", "First President who was a born citizen,  Built the modern Democratic Party, Improved foreign relations", "none"),
(9, "Harrison", "William", "Whig Party", "Old Tippecanoe", "1773", "1841", "1", "1840", "Ohio Senator, Ohio Representative, Governor of Indiana Territory", "Won the Battle of Tippecanoe, Longest Inauguration Speech to date", "none"),
(10, "Tyler", "John", "Whig Party", "His Accidency", "1790", "1862", "1", "1840", "Vice President, Virginia Senator, Governor of Virginia , Virginia Representative", "Avoided Impeachment, Annexation of Texas", "none"),
(11, "Polk", "James", "Democratic Party", "Napoleon of the Stump", "1795", "1849", "1", "1840", "Governor of Tennessee, Tennessee Representative", "Acquisition of Oregon Territory, California, and the Treaty of New Mexico, Established a new federal depository system, strengthened the executive office", "Mexican American War"),
(12, "Taylor", "Zachary", "Whig Party", "Old Rough and Ready", "1784", "1850", "1", "1840", "Commander in Black Hawk War and Seminole War", "Very successful when he previously fought in the Mexican War", "none"),
(13, "Fillmore", "Millard", "Know Nothing", "The American Louis Philippe", "1800", "1874", "1", "1850", "Vice President, Vice-chancellor of the eight judicial district", "Destroyed the Whig Party", "none"),
(14, "Pierce", "Franklin", "Democratic Party", "Handsome Frank", "1804", "1869", "1", "1850", "Senator in New Hampshire, Representative in New Hampshire", "The Gadsden Purchase", "none"),
(15, "Buchanan", "James", "Democratic Party", "Old Buck", "1791", "1868", "1", "1850", "Pennsylvania Senator, Pennsylvania Representative, Ambassador to U.K., Ambassador to Russia, Secretary of State", "Lawyer, Served in Andrew Jackson’s presidential administration", "none"),
(16, "Lincoln", "Abraham", "Republican Party", "Honest Abe", "1809", "1865", "2", "1860", "Illinois Representative", "Victory in Civil War, Freedom for slaves", "U.S. Civil War"),
(17, "Johnson", "Andrew", "Democratic Party", "Father of Homestead Act", "1808", "1875", "1", "1860", "Vice President, Tennessee Senator, Governor of Tennessee, Tennessee Representative", "Got Rid of 14th Amendment", "U.S. Civil War"),
(18, "Grant", "Ulysses", "Republican Party", '"Unconditional Surrender" Grant', "1822", "1885", "2", "1860", "Leader of Union Army", "Won the Civil War, Removed some of the vestiges of slavery", "none"),
(19, "Hayes", "Rutherford", "Free Soil Party", "Dark Horse President", "1822", "1893", "1", "1870", "Governor of Ohio", "Began efforts to lead to civil service reform, began to reconcile divisions left from Civil War", "none"),
(20, "Garfield", "James", "Republican Party", "Boatman Jim", "1831", "1881", "1", "1880", "Ohio Representative", "Purging corruption in post office, appointed a U.S. Supreme Court Justice", "none"),
(21, "Arthur", "Chester", "Republican Party", "Chet", "1829", "1886", "1", "1880", "Vice President, Collector of the Port of New York", "Enforced Pendleton Civil Service Reform Act, Helped rebirth the US Navy", "none"),
(22, "Cleveland", "Grover", "National Democratic Party", "Big Steve", "1837", "1908", "1", "1880", "Governor of New York, Mayor of Buffalo", "Established the first independent federal agency", "none"),
(23, "Harrison", "Benjamin", "Republican Party", "Grandfather’s Hat", "1833", "1901", "1", "1880", "Senator for Illinois", "The Sherman Antitrust Act and the McKinley Tariff", "none"),
(24, "Cleveland", "Grover", "National Democratic Party", "Big Steve", "1837", "1908", "1", "1890", "Governor of New York, Mayor of Buffalo", "Established the first independent federal agency", "none"),
(25, "McKinley", "William", "Republican Party", "Liberator of Cuba", "1843", "1901", "1", "1890", "Governor of Ohio", "Won election by a large margin, Lead the country to victory in the Spanish American War", "Spanish American War"),
(26, "Roosevelt", "Theodore", "Republican Party", "Haroun-al-Roosevelt", "1858", "1919", "2", "1900", "Governor of New York, Vice President, Assistant Secretary of the Navy, Member of the New York State Assembly", "Promoted more efficient use of natural resources, Expanded national park system, attacked large business", "none"),
(27, "Taft", "William", "Republican Party", "Old Bill", "1857", "1930", "1", "1900", "Chief Justice of the U.S., Provisional Governor of Cuba, Governor-General of the Philippines, Secretary of War, Solicitor General of the United States", "Busted many trusts, Set more static railroad rates, Created a federal income tax", "none"),
(28, "Wilson", "Woodrow", "Democratic Party", "Schoolmaster in Politics", "1856", "1924", "2", "1910", "Governor of New Jersey", "Created the League of Nations, Gave Women the right to vote ", "World War 1"),
(29, "Harding", "Warren", "Republican Party", "Winnie", "1865", "1923", "1", "1920", "Ohio Senator, Lieutenant Governor of Ohio", "Begins the return to normalcy after World War 1", "none"),
(30, "Coolidge", "Calvin", "Republican Party", "Cautious Cal", "1872", "1933", "2", "1920", "Vice President, Governor of Massachusetts", "Strengthened the Economy, Shrank federal debt", "none"),
(31, "Hoover", "Herbert", "Republican Party", "Bert", "1874", "1964", "1", "1920", "United States Secretary of Commerce", "World famous humanitarian, Brought child health into the Government’s agenda, prison reform", "none"),
(32, "Roosevelt", "Franklin", "Democratic Party", "F.D.R.", "1882", "1945", "4", "1930", "Governor of New York, New York State Senator, Assistant of Secretary of the Navy", "New Deal, Created the National Recovery Administration, Ended Prohibition", "World War 2"),
(33, "Trueman", "Harry", "Democratic Party", "Give ‘Em Hell Harry", "1884", "1972", "2", "1940", "Vice President, Senator for Missouri", " Ended WWII, Began The Cold War, Initiated U.S. involvement in the Korean War", "World War 2, Korean War"),
(34, "Eisenhower", "Dwight", "Republican Party", "Duckpin", "1890", "1969", "2", "1950", "Army Chief of Staff, President of Columbia University, First Supreme Commander of NATO", "Civil Rights Act of 1957, Supported fight against segregation, Created the Interstate Highway System", "Korean War, Vietnam War"),
(35, "Kennedy", "John", "Democratic Party", "Cash Kennedy", "1917", "1963", "1", "1960", "Massachusetts Senator, Massachusetts Representative", "Served in WWII, Youngest President elected, Helped pull the economy out of recession, Fought against nuclear weapons", "Vietnam War"),
(36, "Johnson", "Lyndon", "Democratic Party", "LBJ", "1908", "1973", "2", "1960", "Senator for Texas, Representative for Texas, Vice President", "Large tax cuts, Clean Air Act, Civil Rights Act of 1964, Created Medicare and Medicaid", "Vietnam War"),
(37, "Nixon", "Richard", "Republican Party", "Red Hunter", "1913", "1994", "2", "1960", "California Senator, Vice President, California Representative", "Improved Relations with China and the Soviet Union, Created the Environmental Protection Agency", "Vietnam War"),
(38, "Ford", "Gerald", "Republican Party", "Jerry", "1913", "2006", "1", "1970", "Vice President, Michigan Representative", "Signed the Helsinki Accords", "Vietnam War"),
(39, "Carter", "James", "Democratic Party", "The Peanut Farmer", "1924", "1977", "1", "1970", "Governor of Georgia", "Established new national energy policy, Pursued the Camp David Accords, the Panama Canal Treaties, Salt II, and the return of the Panama Canal zone to Panama", "none"),
(40, "Reagan", "Ronald", "Republican Party", "Dutch", "1911", "2004", "2", "1980", "Governor of California", "Massive economic growth, Large Tax Cuts", "none"),
(41, "Bush", "George", "Republican Party", "41", "1924", "2018", "1", "1980", "Vice President, Ambassador to United Nations, Director of Central Intelligence, Texas Representative", "Navigated final years of Cold War, Helped reunify Germany, Presided over the invasion of Panama and the Gulf War", "none"),
(42, "Clinton", "William", "Democratic Party", "Bubba", "1946", null, "2", "1990", "Governor of Arkansas, Attorney General of Arkansas", "Longest period of peacetime economic expansion, Signed NAFTA into law", "none"),
(43, "Bush", "George", "Republican Party", "43", "1946", null, "2", "2000", "Governor of Texas", "Large tax cut program, No Child Left Behind Act", "War in Afghanistan, Iraq War"),
(44, "Obama ", "Barack", "Democratic Party", "Barry", "1961", null, "2", "2000", "Illinois Senator", "Addressed the global finance crisis, Health care reform, Pulled majority of U.S. military presence out of Iraq", "War in Afghanistan, Iraq War"),
(45, "Trump", "Donald", "Republican Party", "Orange Man", "1946", null, "1", "2010", "Businessman", "Space Force, First Step Act", "War in Afghanistan"),
(46, "Biden", "Joe", "Democratic Party", "Amtrak Joe", "1942", null, "1", "2020", "Delaware Senator, New Castle County Council Member, Vice President", "To be seen", "War in Afghanistan")
;


-- 1. Display all presidents with the first name of "James" (first and last)
select concat(firstName, " ", lastName) as "Presidents" from presidentInfo where firstName = "James";

-- 2. Display all presidents that are a "Democrat". (first, last & party)
select concat(firstName, " ", lastName) as "Presidents", party as "Party" from presidentInfo where party = "Democratic Party";

-- 3. Display all presidents that are a "Republican". (first, last & party)
select concat(firstName, " ", lastName) as "Presidents", party as "Party" from presidentInfo where party = "Republican Party";

-- 4. Displays all presidents that aren't "Republican or Democrat" (first, last, & party)
select concat(firstName, " ", lastName) as "Presidents", party as "Party" from presidentInfo where party != "Republican Party" and party != "Democratic Party";

-- 5. Display all presidents that last name starts with an "M" (first and last)
select concat(firstName, " ", lastName) as "Presidents" from presidentInfo where lastName like "M%";

-- 6. Display all presidents that served 1 term. (first, last & terms)
select concat(firstName, " ", lastName) as "Presidents", terms as "Terms Served" from presidentInfo where terms = "1";

-- 7. Display all presidents that served 2 term. (first, last & terms)
select concat(firstName, " ", lastName) as "Presidents", terms as "Terms Served" from presidentInfo where terms = "2";

-- 8. Display all presidents that served more than 2 terms (first, last & terms)
-- Because terms is supposed to be a string, I used a compound conditional instead of a greater than operator
select concat(firstName, " ", lastName) as "Presidents", terms as "Terms Served" from presidentInfo where terms != "2" and terms != "1";

-- 9. Display all presidents that served during peace time (first & last)
select concat(firstName, " ", lastName) as "Presidents" from presidentInfo where warsDuringOffice = "none";

-- Drops our database
drop database presidents;