# Write your MySQL query statement below
SELECT A.name AS Employee
FROM employee AS A
     INNER JOIN employee AS B
     ON A.managerId = B.id
WHERE A.salary > B.salary;
       