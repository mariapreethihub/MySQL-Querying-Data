# MySQL-Querying Data

    Querying data in MySQL involves retrieving specific information from one or more tables in a database using the
    SQL (Structured Query Language).Querying data in MySQL involves leveraging SQL clauses to filter, organize, and 
    retrieve the required information efficiently.

When we query data,we typically specify the following:

    1. What data you want: This includes selecting specific columns or fields 
       from one or more tables.
    2. Conditions for the data: We can specify conditions that the data 
       must meet to be included in the result set. 
    3. How the data should be organized: We can specify the order in which the 
       data should be presented, such as sorting by a particular column.
    4. Limits on the amount of data:We can specify limits on the 
       number of rows returned.

Lets discuss on few MySQL Clauses:

  **1.Alias(AS)**
       
        Alias means a temporary name given to a table or a column.
        eg:SELECT first_name AS name FROM employees;

  **2.Filtering Data with WHERE**

       The WHERE clause acts as a filter on the rows of the result set produced by the 
       FROM clause. It extracts only those records that fulfill the specified condition.
       eg:SELECT first_name, salary FROM employees WHERE salary > 50000;

  **3.SELECT Clause**
  
       Retrieves specific columns from a table.
       eg:SELECT first_name, last_name FROM employees;

  **4.DISTINCT Clause**

       This statement is used to return only distinct values.
       eg:SELECT DISTINCT department_id FROM employees;

  **5. Sorting Data with ORDER BY**

       The ORDER BY clause is used for sorting the data either in ascending or descending
       order based on a specified column or list of columns.
       eg:SELECT first_name, salary FROM employees ORDER BY salary DESC;

  **6. Limiting Results with LIMIT**
  
       The LIMIT Clause in MySQL is used to retrieve the records from one or more database
       tables and then limit the number of records returned based on a given value.
       eg:SELECT first_name, salary FROM employees ORDER BY salary DESC LIMIT 5;

  **7.GROUP BY Clause**
       
        Groups rows that share the same values in specified columns.
        eg:SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id;

  **8.HAVING Clause**
        
        The Having Clause in MySQL is also used for filtering the data just like the where 
        clause. Having Clause in MySQL filters the rows from the intermediate result set 
        that is built by using the FROM, WHERE, or GROUP BY clauses in a SELECT statement.
        Filters groups created by GROUP BY.The Having Clause in MySQL is typically used with 
        a GROUP BY clause. 
        eg:SELECT department_id, SUM(salary) AS total_salary FROM employees GROUP BY department_id
        HAVING total_salary > 100000;


  MySQL clauses are often used alongside functions and operators to manipulate, filter, or analyze data.Here is 
  the commonly used funtions and operators:
       
  **1.String Functions:**

       a.UCASE()/UPPER() -Convert names to uppercase.
        eg:SELECT UPPER(first_name) AS upper_name FROM employees;

       b.LCASE()/LOWER() -Convert names to uppercase.
        eg:SELECT LOWER(first_name) AS lower_name FROM employees;
      
       b.CONCAT()-Concatenate first and last names:
        eg:SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;
      

  **2.Numeric Functions:**

      a.ROUND()-Round salaries to the nearest thousand.
       eg:SELECT ROUND(salary, -3) AS rounded_salary FROM employees;

  **3.Common Aggregate Functions:** 
  
    a:SUM()-Adds up all the values in a specified column.
    eg: SELECT SUM(salary) AS total_salary FROM employees;
    
    b.AVG()- Calculates the average value of a specified column.
    eg: SELECT AVG(salary) AS average_salary FROM employees;
    
    c.COUNT()-Counts non-NULL values in a column.
    eg:SELECT COUNT(*) AS total_employees FROM employees;
    
    d.MAX()-Returns the maximum value in a specified column.
    eg:SELECT MAX(salary) AS highest_salary FROM employees;
    
    e.MIN()-Returns the minimum value in a specified column.
    eg:SELECT MIN(salary) AS lowest_salary FROM employees;

  **4.Operators**:

     a.AND-All conditions must be true.
      eg: SELECT * FROM employees WHERE salary > 50000 AND department_id = 101;
      
     b.OR	-At least one condition must be true.
      eg: SELECT * FROM employees WHERE salary > 50000 OR department_id = 101;
      
     c.NOT-	Negates a condition.
       eg: SELECT * FROM employees WHERE NOT salary > 50000;

     d.IN -The IN operator is used to filter records that match a value within a list 
          of specified values.
       eg: SELECT first_name, department_id FROM employeesWHERE department_id IN (101, 102, 103);

     e.LIKE Operator-The LIKE operator is used for pattern matching in string data. It works with wildcards to match partial values.

       Wildcards:
        % (percent): Matches zero or more characters.
        _ (underscore): Matches a single character.
      eg:SELECT first_name FROM employeesWHERE first_name LIKE 'J%';

     f.BETWEEN Operator-The BETWEEN operator is used to filter data within a range. It works for numeric, text, and date values.
       eg:SELECT first_name, salary FROM employeesWHERE salary BETWEEN 50000 AND 100000;
    
     g.CURDATE()-Returns the current date.
       eg:SELECT CURDATE() AS current_date;
      
     h.DATEDIFF()-Returns the number of days between two dates.
       eg:SELECT DATEDIFF(CURDATE(), hire_date) AS days_employed FROM employees;

     i.YEAR(), MONTH(), DAY()-Extracts the year, month, or day from a date.
       eg:SELECT YEAR('2024-12-03') AS year;

  
