
Union : The UNION operator is used to combine the result sets of two  or more SELECT statements into a single result set. It removes 
dupicate rows from the result set. 

UNION ALL : The UNION ALL operator, on the other hand, is used to combine the result sets of two or more SELECT statements into a single result set without removing any duplicate 
rows.

Here's an example with two tables: 
Table 1: employees 

Emp_id   Emp_name 
1        PALLAVI 
2        RASHI 
3        AKSHAY 
4        RAHUL 


Table 2: contractors 
Cont_id   Cont_name 
1         HEMANT 
2         NANDINI 
3         PALLAVI 
4         RAHUL

1. Query Using UNION (removes duplicates):
SELECT Emp_name as name  FROM employees
UNION
SELECT Cont_name as name  FROM contractors;

output : 
PALLAVI
RASHI
AKSHAY
RAHUL
HEMANT
NANDINI

2. Query Using UNION ALL (includes duplicates):

SELECT Emp_name as name   FROM employees
UNION ALL
SELECT Cont_name as name FROM contractors;

Output :
name
PALLAVI
RASHI
AKSHAY
RAHUL
HEMANT
NANDINI
PALLAVI
RAHUL




