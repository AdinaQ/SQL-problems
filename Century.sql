CREATE TABLE Person(
    id INT PRIMARY KEY NOT NULL,
    date_of_birth DATE
    );

INSERT INTO Person(id, date_of_birth) VALUES(1, '1900-08-02');
INSERT INTO Person(id, date_of_birth) VALUES(2, '1902-08-02');
INSERT INTO Person(id, date_of_birth) VALUES(3, '1888-03-10');
INSERT INTO Person(id, date_of_birth) VALUES(4, '2000-04-12');

SELECT id,date_of_birth,CASE 
    WHEN RIGHT(YEAR(date_of_birth),2)='00' THEN LEFT(YEAR(date_of_birth),LENGTH(YEAR(date_of_birth))-2)
    ELSE LEFT(YEAR(date_of_birth),LENGTH(YEAR(date_of_birth))-2)+1
    END AS century
    FROM Person;
