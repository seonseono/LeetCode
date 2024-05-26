# Write your MySQL query statement below
SELECT name
FROM Employee AS A
JOIN (SELECT managerId, COUNT(managerId) AS cnt
      FROM Employee
      GROUP BY managerId
     ) AS B
     ON A.id = B.managerId
WHERE B.cnt >= 5