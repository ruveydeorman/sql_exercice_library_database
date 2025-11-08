USE university;


SELECT title 
FROM course 
WHERE credits > (SELECT AVG(credits) FROM course);


SELECT i1.name, i1.dept_name, i1.salary, 
       (SELECT AVG(i2.salary) 
        FROM instructor i2 
        WHERE i2.dept_name = i1.dept_name) AS dept_avg_salary
FROM instructor i1
WHERE i1.salary > (SELECT AVG(i2.salary) 
                   FROM instructor i2 
                   WHERE i2.dept_name = i1.dept_name)
ORDER BY i1.dept_name, i1.salary DESC;


SELECT DISTINCT c.course_id, c.title
FROM course c
JOIN prereq p ON c.course_id = p.prereq_id
JOIN section s ON c.course_id = s.course_id
WHERE s.semester = 'Fall' AND s.year = 2023
ORDER BY c.course_id;


SELECT DISTINCT s2.ID, s2.name
FROM student s1
JOIN takes t1 ON s1.ID = t1.ID
JOIN takes t2 ON t1.course_id = t2.course_id 
              AND t1.sec_id = t2.sec_id 
              AND t1.semester = t2.semester 
              AND t1.year = t2.year
JOIN student s2 ON t2.ID = s2.ID
WHERE s1.name = 'John Doe' 
  AND s2.name != 'John Doe'
ORDER BY s2.name;

SELECT dept_name
FROM course
GROUP BY dept_name
HAVING COUNT(*) > (
    SELECT COUNT(*) 
    FROM course 
    WHERE dept_name = 'Computer Science'
);