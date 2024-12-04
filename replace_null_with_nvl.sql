'''
The NVL function in SQL is used to handle NULL values. It replaces a NULL value with a specified replacement value.

NVL(expression, replacement_value)

expression: The column or value to check for NULL.
replacement_value: The value to return if expression is NULL

'''

Example 1: Replace NULL in a column
Consider a table employees with the following data:

EmployeeID	 Name	    Salary
1	         Alice	    50000
2	         Bob	     NULL
3	         Charlie	70000

You can use NVL to replace the NULL in the Salary column with a default value, e.g., 0:

SELECT Name, NVL(Salary, 0) AS AdjustedSalary
FROM employees;

Output:

Name	 AdjustedSalary
Alice	    50000
Bob        	  0
Charlie	     70000



Example 2: Use in calculations
If you want to calculate bonuses for employees, assuming NULL salaries should be treated as 0:


SELECT Name, NVL(Salary, 0) * 0.1 AS Bonus
FROM employees;

Output:

Name	   Bonus
Alice	    5000.0
Bob	        0.0
Charlie	    7000.0


Notes:
In MySQL, you can use IFNULL instead of NVL.
In SQL Server, use ISNULL instead.
In PostgreSQL, use COALESCE, which is more flexible and supports multiple fallback values.
Let me know if you'd like examples for other databases!