"""
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.



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
SELECT DISTINCT CITY
FROM STATION 
WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') OR
( CITY NOT LIKE '%a'
  AND CITY NOT LIKE '%e'
  AND CITY NOT LIKE '%i'
  AND CITY NOT LIKE '%o'
  AND CITY NOT LIKE '%u'
  AND CITY NOT LIKE '%A'
  AND CITY NOT LIKE '%E'
  AND CITY NOT LIKE '%I'
  AND CITY NOT LIKE '%O'
  AND CITY NOT LIKE '%U');
