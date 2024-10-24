# Cast Function in sql


The CAST function in SQL is used to convert a value from one data type to another.
This can be particularly useful when you need to ensure that data types match for operations or comparisons. Here’s the basic syntax:

CAST(expression AS data_type)

expression: The value or column you want to convert.
data_type: The target data type you want to convert to.

Example
If you have a string value '25' and you want to convert it to an integer, you can use:

SQL

SELECT CAST('25' AS INT);


#
select cast (column_name as new_data_type ) from table_name;

for ex :
select cast('123' as bigint) as converted_value from table_name;
