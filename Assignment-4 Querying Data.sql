--CREATING DATABASE POPULATION
create database population;
use population;

---CREATING TABLE COUNTRY
create table Country (
    Country_name VARCHAR(50) Primary Key,
    Population INT,
    Area INT);

---CREATING TABLE PERSON
create table Person(
Fname VARCHAR(50),
Lname VARCHAR(50),
Population INT,
Rating DECIMAL(3,1),
Country_Id INT,
Country_name VARCHAR(50),
FOREIGN KEY (Country_name) REFERENCES Country(Country_name));

--INSERTING VALUES INTO TABLE COUNTRY
## population entered in million and area in million sq.km

INSERT INTO country (country_name, population, area) VALUES
('USA', 336.0, 9.83),
('UK', 67.0, 0.24),
('Australia', 266.0, 7.69),
('India', 1417.0, 3.29),
('Palau', 0.018, 0.00046),
('Tuvalu', 1.1, 0.00003),
('Canada', 40.0, 9.98),
('China', 1430, 9.60),
('Bangladesh', 170, 0.14),
('Pakistan', 220.0, 0.81);

--INSERTING VALUES INTO TABLE PERSON
## population entered in million 
insert into person(Fname,lname,population,rating,country_id,country_name)values
('John','Joseph',336,4.5,1,'USA'),
('Mathew','Joseph',336,4,1,'USA'),
('Varghese','Peter',336,3.5,1,'USA'),
('Paul','Thomas',67,4.5,2,'UK'),
('John','Paul',67,3,2,'UK'),
('Peter','Jo',266,5,3,'Australia'),
('John','Jose',1430,4,4,'China'),
('Antony','Thomas',1417,4,5,'India'),
('John','Bastin',336,4.5,6,null),
('Mathew','Paul',40,4.5,7,'Canada');

---#1 LISTING DISTINCT COUNTRY NAMES FROM TABLE PERSON
select distinct country_name from person;

---#2 SELECT FIRST NAME AND LAST NAME FROM THE PERSONS TABLE WITH ALIASES
select fname as first_name,lname as last_name from person;

---#3 FIND ALL PERSONS WITH RATING GREATER THAN 4
select CONCAT (fname,' ',lname) AS Name,rating from person where rating >4;

---#4 FIND COUNTRIES WITH A POPULATION GREATER THAN 10LAKHS(## population entered in million )
SELECT country_name,population FROM country where population>'1.0';

---#5 FIND PERSON WHO IS FROM USA OR HAVING A RATING GREATER THAN 4.5
select CONCAT (fname,' ',lname) AS Name,country_name,rating from person where 
country_name='USA' or rating> 4.5;

---#6 FIND ALL PERSONS WHERE THE COUNTRY NAME IS NULL
select CONCAT (fname,' ',lname) AS Name,country_name from person where country_name is NULL;

---#7 FIND ALL PERSONS FROM THE COUNTRIES USA,CANADA,UK
select CONCAT (fname,' ',lname) AS Name,country_name from person where country_name 
in ('USA','Canada','UK');


---#8 FIND ALL PERSONS NOT FROM COUNTRIES INDIA AND AUSTRALIA
select CONCAT (fname,' ',lname) AS Name,country_name from person where country_name
 NOT IN('India','Australia');

---#9 FIND ALL COUNTRIES WITH A POPULATION BETWEEN 5LAKHS AND 20LAKHS(## population entered in million )
select country_name,population from country where population between '0.5' and '2.0';

---#10 FIND ALL COUNTRIES WHOSE NAMES DO NOT START WITH C
select country_name from country having country_name not like 'c%';
