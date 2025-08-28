"""
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

Column      Type
employee_id Integer
name        String
months      Integer
salary      Integer
"""
#The code
select name 
from Employee
order by name asc;
