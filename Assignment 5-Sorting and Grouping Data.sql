--CREATING DATABASE POPULATIONS
create database Populations;
use Populations;

---CREATING TABLE COUNTRY
create table Country (
    Id INT PRIMARY KEY,                 
    Country_name VARCHAR(50),
    Population INT,
    Area INT);

---CREATING TABLE PERSON
create table Person (
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id));

--INSERTING VALUES INTO TABLE COUNTRY
## population entered in million and area in million sq.km

INSERT INTO Country (Id,Country_name, Population,Area) VALUES
(1,'USA', 336.0, 9.83),
(2,'UK', 67.0, 0.24),
(3,'Australia', 266.0, 7.69),
(4,'India', 1417.0, 3.29),
(5,'Palau', 0.018, 0.00046),
(6,'Tuvalu', 1.1, 0.00003),
(7,'Canada', 40.0, 9.98),
(8,'China', 1430, 9.60),
(9,'Bangladesh', 170, 0.14),
(10,'Pakistan', 220.0, 0.81);

--INSERTING VALUES INTO TABLE PERSON
## population entered in million 
insert into Person(Fname,Lname,Population,Rating,Country_id,Country_name)values
('John','Joseph',336,4.5,1,'USA'),
('Mathew','Joseph',336,4,1,'USA'),
('Varghese','Peter',336,3.5,1,'USA'),
('Paul','Thomas',67,4.5,2,'UK'),
('John','Paul',67,3,2,'UK'),
('Peter','Jo',266,5,3,'Australia'),
('John','Jose',1430,4,8,'China'),
('Antony','Thomas',1417,4,4,'India'),
('John','Bastin',336,4.5,7,'Canada'),
('Mathew','Paul',40,4.5,7,'Canada');

#1. SQL query to print the first three characters of Country_name from the Country table.
select substring(Country_name,1,3) AS First_three_character from Country;

#2. SQL query to concatenate first name and last name from Persons table. 
select concat(Fname," ",Lname) AS Full_Name from Person;

#3.SQL query to count the number of unique country names from Persons table. 
select distinct(Country_name) AS Distinct_Names from Person;

#4.Query to print the maximum population from the Country table. 
select max(Population) AS Highest_Population_in_CountryTB from Country;

#5.Query to print the minimum population from Persons table.
select min(Population) AS Lowest_Population_in_PersonTB from Person;

#6.Inserting 2 new rows to the Persons table making the Lname NULL. 
insert into Person(Fname,Lname,Population,Rating,Country_id,Country_name)
values
('John',null,336,4.5,1,'USA'),
('Paul',null,67,5,2,'UK');

select * from Person;

#7.Query to count Lname from Persons table. 
select count(Lname) AS No_of_Last_Names from Person;

#8.Query to find the number of rows in the Persons table. 
select count(*) AS Total_no_of_rows_in_table_Person from Person;

#9. SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT) 
select Population AS First_Three_Rows_Population from Country limit 3;

#10.Query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT) 
select * from Country order by rand() limit 3;

#11.Listing all persons ordered by their rating in descending order.
select concat(Fname," ",Lname) AS Full_Name,Rating from Person order by rating desc;

#12.Listing total population for each country in the Person table.
select Distinct(Country_name),Population AS Total_Population_in_million from Person order by Population;

#13.List of Countries in the Person table with a total population greater than 50,000
select Distinct(Country_name),Population AS Total_Population_in_million from Person where Population>0.05;

#14. List the total number of persons and average rating for each country, but only for countries with
     more than 2 persons, ordered by the average rating in ascending order.

select Country_name,count(Fname) AS Total_no_of_person,avg(rating) AS Average_rating from Person 
group by Country_name 
having Total_no_of_person>2 
order by Average_rating ASC;
