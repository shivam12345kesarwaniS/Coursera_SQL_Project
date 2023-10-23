##########################################################
##########################################################
-- Guided Project: The SQL SELECT Statement
##########################################################
##########################################################


#############################
-- Task One: Introduction
-- In this task, retrieve data from the four tables in the database
#############################
use skimp;

-- Retrieve all data from the employees table
select * from employees;



-- Retrieve all data from the departments table
select * from departments;


-- Retrieve all data from the departments employees table
select * from dept_emp;



-- Retrieve all data from the salaries table
select * from salaries;



#############################
-- Task Two: SELECT - FROM AND WHERE
-- In this task, you will retrieve data from tables as in task one. In addition, 
-- you will learn how to set conditions on the result set of a query using the WHERE clause
#############################

##########
-- SELECT - FROM

-- 2.1: Select the first name and last name of all employees
select first_name,last_name from employees;




-- 2.2 Select all records from the employees table
SELECT * FROM employees;



-- 2.3 (Ex.) Select the department number from the departments table
select dept_no from departments;




-- 2.4 (Ex.) Select all records from the departments table
SELECT * FROM departments;



############
-- SELECT FROM - WHERE

-- 2.5 Select all employees whose first name is 'Elvis'
select * 
from employees
where first_name= 'Elvis'


    
-- 2.6 (Ex.) Select all employees whose first name is 'Hilari'
select * 
from employees
where first_name= 'Hilari';


    

#############################
-- Task Three: SQL Operators
-- In this task, you will retrieve data from tables in the employees database,
-- using different SQL operators together with the WHERE clause
#############################


###########
-- AND

-- 3.1 Select all male employees whose first name is 'Denis'
select * from employees
where first_name='Denis' and gender='M';




  
-- 3.2 (Ex.) Select all female employees whose last name is 'Reistad'
select * from employees
where last_name ='Resistad' and gender='F';




###########
-- OR

-- Recall we have done this in 3.1 above  

SELECT *
FROM employees
WHERE first_name = 'Denis' AND gender = 'M';

-- 3.3 Select all employees whose first name is 'Denis' or 'Elvis'
select * from employees
where first_name='Denis' or first_name='Elvis';




-- Let us compare with this
-- Select all employees whose first name is 'Denis' and 'Elvis'

SELECT *
FROM employees
WHERE first_name = 'Denis' AND first_name = 'Elvis';
    
-- 3.4 (Ex.) Retrieve a list of all employees whose first name is either
'Kellie' or 'Aruna'
select * from employees 
where first_name='Kellie' or first_name='Aruna';




###########
-- Operator Precedence  and is operate first then or 

-- 3.5 Retrieve a list of all male or female employees whose last name is 'Denis'

SELECT *
FROM employees
WHERE last_name = 'Denis' AND gender = 'M' OR gender = 'F';

-- Correct Syntax
select * from employees
where  last_name='Denis' and (gender='M' OR gender='F');

select * from employees
where (gender='M' OR gender='F') and  last_name='Denis';


-- 3.6 (Ex.) Retrieve a list of all female employees whose first name is either
'Kellie' or 'Aruna'
select  * from employees 
where gender='F' AND (first_name='Kellie' or first_name='Aruna');




###########
-- IN / NOT IN

-- 3.7: Retrieve a list of all employees whose first name is either 'Cathie', 'Mark' or 'Nathan'

SELECT *
FROM employees
WHERE first_name = 'Cathie' OR first_name = 'Mark' OR first_name = 'Nathan';   # time consuming process use in 

-- Alternative Solution
select * from employees 
where first_name in ('Cathie','Mark','Nathan');




-- NOT IN
select * from employees 
where first_name not in ('Cathie','Mark','Nathan');   



#############################
-- Task Four: Wildcard Characters 
-- In this task, you will retrieve data from tables in the employees database,
-- using different wildcard characters together with the WHERE clause
#############################

###########
-- LIKE / NOT LIKE   not like is opposite of like 
# % mulltiple character ,_ single character ,

-- 4.1: Extract a list of all employees whose first name starts with 'Mar'
select * from employees 
where first_name like 'Mar%';




-- 4.2: Extract a list of all employees whose first name starts with 'Ar'
select * from employees 
where first_nmae like 'Ar%';





-- 4.3: Extract a list of all employees whose first name ends with 'Ar'
select * from employees 
where first_name like '%Ar';





-- 4.4: What do you think the result of this query will be?

SELECT *
FROM employees
WHERE first_name LIKE '%ar%';  # doubt in this query middle or left , right possible 

-- 4.5: What do you think the output will be here?

SELECT *
FROM employees
WHERE first_name LIKE 'Mar_';

-- 4.6: What about this??
    
SELECT *
FROM employees
WHERE first_name NOT LIKE '%Mar%';

-- 4.7 (Ex.): Extract all individuals from the 'employees' table whose first name 
-- starts with 'Mark'
select * from employees
where first_name like 'Mar%';


    
-- 4.8 (Ex.): Extract all individuals from the employees table whose first name 
-- does not contain 'Jack'

SELECT *
FROM employees
WHERE first_name NOT LIKE ('%Jack%');


#############################
-- Task Five: SQL Operators - Part 2
-- In this task, you will retrieve data from tables in the employees database,
-- using different SQL operators together with the WHERE clause
#############################

###########
-- BETWEEN - AND

-- 5.1: Extract a list of all employees who were employed between
-- 1st of January, 1990 and 1st January, 2000
select * from employees
where hire_date between '1990-01-01' and '2000-01-01';
 



    
-- 5.2: Extract a list of all employees who were not employed between
-- 1st of January, 1990 and 1st January, 2000
select * from employees
where hire_date not between '1990-01-01' and '2000-01-01';


	
-- 5.3 (Ex.): Select all the records from the salaries table, regarding contracts
-- from 66000 to 70000 dollars/year
select * from salaries
where salary between 66000 and 70000;

-- Selecting all records from the salaries table

SELECT * FROM salaries;

-- Solution to 5.3





-- 5.4: Retrieve a list of individuals whose emp_no is not between
-- 10004 and 10012.
select * from employees;
select * from employees 
where emp_no not between 10004 and 10012;




###########
-- IS NOT NULL / IS NULL

-- 5.5: Extract a list of employees whose first name is not null
select * from employees
where first_name  is not null;
   
-- Let us count how many first names are in the employees table
select * from employees;
select count(*) from employees;
select count(first_name) from employees;




-- Solution to 5.5



-- 5.6: Extract a list of employees whose first name is null
select * from employees 
where first_name is null;
    




-- 5.7 (Ex.): Select the names of all departments whose department number value is not null
select * from departments;
select dept_name from departments 
where dept_no is not null;




#############################
-- Task Six: Other Comparison Operators
-- In this task, you will retrieve data from tables in the employees database,
-- using other comparison operators together with the WHERE clause
#############################

###########
-- Equal to (=) & Not Equal to (<> or !=)

-- 6.1: Retrieve a list of all employees whose first name is 'Mark'

SELECT *
FROM employees
WHERE first_name = 'Mark';

-- 6.2: Retrieve a list of all employees whose first name is not 'Mark'
    
SELECT *
FROM employees
WHERE first_name != 'Mark';


-- 6.3: Retrieve a list of all employees whose first name is not 'Mark'




#########
-- Greater than & Less than

-- 6.4: Retrieve a list of all employees who were employed after 1st of January, 1997.
    select * from employees
    where hire_date > "1997-01-01";


  
-- 6.5: Retrieve a list of all employees who were employed on or after 1st of January, 1997.
select * from employees
where hire_date >= '1997-01-01';



-- 6.6: Retrieve a list of all employees who were employed before 1st of February, 1990
select * from employees
where hire_date < '1990-01-01';




-- 6.7: What do you think the result will be??
SELECT *
FROM employees
WHERE hire_date <= '1990-02-01';

-- 6.8 (Ex.): Retrieve a list of all female employees who were hired on or after 1st January, 1999. 
select * from employees
where gender='F' AND hire_date >= '1999-01-01';



-- 6.9: Extract a list with employees' salaries higher than 50,000 dollars per annum
SELECT * FROM salaries
where salary > 50000;



#############################
-- Task Seven: Select Distinct, Order BY, Limit, and SQL Aliases.
-- In this task, you will learn how to retrieve distinct data from tables in the employees database.
-- In addition, you will learn how to sort the result set, how to limit the result set and how to
-- give a temporary name to a column of a table.
#############################

###########
-- SELECT DISTINCT

-- 7.1: Select distinct gender from the employees table
select distinct gender from employees;

-- Let us retrieve data from the gender column from the employees table
SELECT gender
FROM employees;

-- Solution to 7.1




-- 7.2: Retrieve a list of the different first names in the employees database
select distinct first_name from employees;


    
###########
-- ORDER BY

-- 7.3: Extract a list with employees' salaries higher than 50,000 dollars per annum
-- Sort the list by the most paid employee
select salary from salaries
where salary >50000
order by salary desc;



-- 7.4: Select all records in the employees table and order by first name
SELECT *
FROM employees
ORDER BY first_name;

-- 7.5: Select all records and order by first name in descending order
select * from employees
order by first_name desc;




-- 7.6: Select all records and order by first name and last name
-- in ascending order
SELECT *
FROM employees
ORDER BY first_name, last_name ASC;

##########
-- Limit and SQL Aliases

-- 7.7: Retrieve a list of the first 100 records in the employees table 
-- and order by emp_no in ascending order
select * from employees 
order by emp_no asc
limit 100;




-- From 5.5: We counted how many first names are in the employees table

SELECT COUNT(first_name)
FROM employees;

-- 7.8: How many firstname are in the employees table. Rename the result as
-- FirstName_Count
select count(first_name) as FirstName_Count
from employees;


select count(distinct first_name ) from employees;  # you can apply something  in this way also 

-- Let's count how many distinct first names we have in the employees table
select distinct first_name ,count(*) from employees
group by first_name
order by first_name asc;


