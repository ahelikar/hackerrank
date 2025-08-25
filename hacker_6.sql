"""
Query the list of CITY names ending  and starting with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
Input Format

The STATION table is described as follows:

      STATION
Field   Type
ID      NUMBER
CITY    VARCHAR2(21)
STATE   VARCHAR2(2)
LAT N   NUMBER
"""
#The code
select distinct CITY
from STATION
WHERE LOWER(SUBSTR(CITY,1,1)) IN ('a','e','i','o','u') AND  
(CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');

