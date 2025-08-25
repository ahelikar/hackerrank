"""
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

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
WHERE LOWER(SUBSTR(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

