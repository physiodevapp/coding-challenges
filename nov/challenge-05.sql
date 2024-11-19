/*
* Write a query identifying the type of each record in the TRIANGLES table using its three side lengths
*/
SELECT 
    CASE 
        WHEN A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
        WHEN A=B AND B=C THEN 'Equilateral'
        WHEN A=B OR B=C OR A=C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS Triangle_Type
FROM TRIANGLES

/*
* 1- Query an alphabetically ordered list of all names in OCCUPATIONS, 
*     immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
*     For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
* 2- Query the number of ocurrences of each occupation in OCCUPATIONS. 
*     Sort the occurrences in ascending order, and output them in the following format: There are a total of [occupation_count] [occupation]s.
*/
SELECT CONCAT(Name, '(', SUBSTRING(OCCUPATION, 1, 1), ')') AS Result
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT('There are a total of ', COUNT(*) , ' ', LOWER(OCCUPATION), 's.') AS Result
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*), OCCUPATION;
    
