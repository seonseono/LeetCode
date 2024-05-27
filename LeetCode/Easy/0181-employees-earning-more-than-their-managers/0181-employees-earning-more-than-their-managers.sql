# Write your MySQL query statement below
SELECT name AS Employee
FROM Employee AS A
WHERE salary > (SELECT salary 
                FROM employee AS B
                WHERE A.managerId = B.id);