# MySQL-Querying,Sorting and Grouping Data

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
       
        -Alias means a temporary name given to a table or a column.
        eg:SELECT first_name AS name FROM employees;

  **2.Filtering Data with WHERE**

       -The WHERE clause acts as a filter on the rows of the result set produced by the 
       FROM clause. 
       -It extracts only those records that fulfill the specified condition.
       -Filters rows before grouping.
       eg:SELECT first_name, salary FROM employees WHERE salary > 50000;

  **3.SELECT Clause**
  
       -Retrieves specific columns from a table.
       eg:SELECT first_name, last_name FROM employees;

  **4.DISTINCT Clause**

       -This statement is used to return only distinct values.
       eg:SELECT DISTINCT department_id FROM employees;

  **5. Sorting Data with ORDER BY**

       -The ORDER BY clause is used for sorting the data either in ascending or descending
       order based on a specified column or list of columns.
       Order Types:

        *ASC (default): Sorts in ascending order.
        *DESC: Sorts in descending order.
        
       eg:SELECT first_name, salary FROM employees ORDER BY salary DESC;

  **6. Limiting Results with LIMIT**
  
       -The LIMIT Clause in MySQL is used to retrieve the records from one or more database
       tables and then limit the number of records returned based on a given value.
       eg:SELECT first_name, salary FROM employees ORDER BY salary DESC LIMIT 5;

  **7.GROUP BY Clause**
       
        -Groups rows that share the same values in specified columns.
        -Aggregation functions like COUNT, SUM, AVG, MAX, and MIN 
         are often applied to these groups.
        -The GROUP BY clause must appear before the ORDER BY clause in a query.
        eg:SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id;

  **8.HAVING Clause**
        
        -The Having Clause in MySQL is also used for filtering the data just like the where 
        clause. 
        -The Having Clause in MySQL is typically used with a GROUP BY clause. 
        -Filters groups after grouping.
        eg:SELECT department_id, SUM(salary) AS total_salary FROM employees GROUP BY department_id
        HAVING total_salary > 100000;


  MySQL clauses are often used alongside functions and operators to manipulate, filter, or analyze data.Here is 
  the commonly used funtions and operators:
       
  **1.String Functions:**

       a.UCASE()/UPPER() -Convert names to uppercase.
        eg:SELECT UPPER(first_name) AS upper_name FROM employees;

       b.LCASE()/LOWER() -Convert names to uppercase.
        eg:SELECT LOWER(first_name) AS lower_name FROM employees;
      
       c.CONCAT()-Concatenate first and last names:
        eg:SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;
        
       d.SUBSTRING()- Extracts a specific part of a string.
       eg:SELECT SUBSTRING(first_name, 1, 3) AS First_threee_Character FROM Employees;
      

  **2.Numeric Functions:**

      a.ROUND()-Round salaries to the nearest thousand.
       eg:SELECT ROUND(salary, 3) AS rounded_salary FROM employees;

      b.RAND()-Function to generate a random floating-point number between 0 (inclusive) and 1 (exclusive).
              -This is often used for sampling.
       eg:SELECT * FROM employees ORDER BY RAND()LIMIT 5;

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

     d.Filtering with Lists(IN) -The IN operator is used to filter records that match a value within a list 
          of specified values.
       eg: SELECT first_name, department_id FROM employees WHERE department_id IN (101, 102, 103);

     e.Filtering with Patterns(LIKE Operator)-The LIKE operator is used for pattern matching in string data. 
       It works with wildcards to match partial values.

       Wildcards:
        % (percent): Matches zero or more characters.
        _ (underscore): Matches a single character.
      eg:SELECT first_name FROM employeesWHERE first_name LIKE 'J%';

     f.Filtering with Ranges(BETWEEN Operator)-The BETWEEN operator is used to filter data within a range. 
       It works for numeric, text, and date values.
       eg:SELECT first_name, salary FROM employeesWHERE salary BETWEEN 50000 AND 100000;

    g.Filtering Null Values (IS NULL or IS NOT NULL)- Find rows where a column is or is not null.
      eg:SELECT * FROM employees WHERE Last_Name IS NULL;
    
    
    
