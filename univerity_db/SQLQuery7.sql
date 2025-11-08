USE university;


INSERT INTO course (course_id, title, dept_name, credits) VALUES
('CS102', 'Data Structures', 'Computer Science', 4),
('CS103', 'Algorithms', 'Computer Science', 4),
('MATH102', 'Calculus II', 'Mathematics', 3),
('PHY102', 'Modern Physics', 'Physics', 4);


INSERT INTO course (course_id, title, dept_name, credits) VALUES
('CS102', 'Data Structures', 'Computer Science', 4),
('CS103', 'Algorithms', 'Computer Science', 4),
('MATH102', 'Calculus II', 'Mathematics', 3),
('MATH103', 'Linear Algebra', 'Mathematics', 3),
('MATH104', 'Differential Equations', 'Mathematics', 3),
('MATH105', 'Number Theory', 'Mathematics', 3),
('PHY102', 'Modern Physics', 'Physics', 4);

INSERT INTO course (course_id, title, dept_name, credits) VALUES
('MATH103', 'Linear Algebra', 'Mathematics', 3),
('MATH104', 'Differential Equations', 'Mathematics', 3),
('MATH105', 'Number Theory', 'Mathematics', 3);


INSERT INTO student (ID, name, dept_name, tot_cred) VALUES
(1024, 'Advanced Student', 'Electrical Engineering', 150);

INSERT INTO takes (ID, course_id, sec_id, semester, year, grade) VALUES
(1002, 'CS101', '1', 'Fall', 2023, 'B'),
(1003, 'CS101', '1', 'Fall', 2023, 'A');