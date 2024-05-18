# Write your MySQL query statement below
SELECT s.Student_id, s.Student_name
     , u.subject_name
     , count(e.subject_name) as attended_exams 
FROM Students AS s 
     JOIN Subjects AS u 
     LEFT JOIN Examinations AS e 
     ON s.student_id = e.student_id 
     AND u.subject_name = e.subject_name
GROUP BY s.student_id, u.subject_name 
ORDER BY s.student_id, u.subject_name;