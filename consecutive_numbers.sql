CREATE TABLE Grades(
  student_id INT PRIMARY KEY NOT NULL,
  marks INT
);

INSERT INTO Grades (student_id,marks) VALUES (101,80);
INSERT INTO Grades (student_id,marks) VALUES (102,79);
INSERT INTO Grades (student_id,marks) VALUES (103,82);
INSERT INTO Grades (student_id,marks) VALUES (104,82);
INSERT INTO Grades (student_id,marks) VALUES (105,82);
INSERT INTO Grades (student_id,marks) VALUES (106,86);
INSERT INTO Grades (student_id,marks) VALUES (107,79);
INSERT INTO Grades (student_id,marks) VALUES (108,93);

#Marks that appear at least 3 times in row
SELECT distinct a.marks as ConsecutiveNum FROM Grades a,Grades b,Grades c 
where a.student_id=b.student_id-1 and b.student_id=c.student_id-1 
and a.marks=b.marks and b.marks=c.marks;
