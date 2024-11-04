CREATE DATABASE josh;

use josh;

CREATE TABLE software(
    id INT PRIMARY KEY,
    dname VARCHAR(255),
    email VARCHAR(255));




INSERT INTO software (id, dname, email) VALUES ('001', 'mukasa matthew', 'matthew@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('002', 'ssemu josh','josh@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('003', 'owanyi morgan', 'owanyi@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('004', 'feta jordan', 'richard@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('005', 'magezi richard', 'richard@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('006', 'mwima mabel', 'mable@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('007', 'kabeho samantha', 'kabeho@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('008', 'nambuya gloria', 'gloria@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('009', 'ayebare ritah', 'ritah@gmail.com')

INSERT INTO software (id, dname, email) VALUES ('010', 'nangoli sam', 'sam@gmail.com')




SELECT * FROM software


ALTER Table software ADD COLUMN salary int;


alter TABLE software CHANGE COLUMN email email_address VARCHAR(255);

alter Table software ADD PRIMARY KEY id;



SELECT ename, job, address from software where jobe = 'manager'

SELECT ename =, job from employees where salary > 40000;


select * from employees where job in ('manager', 'clerk')


select * from software where deptno in (20, 30, 40);




select * from employees where job not in ('manager', 'clerk');




select  * from employees where job = 'manager' and address = 'kampala';





select * from employess where job = 'manager' or address = 'kampala';



select * from employees order by Ename; /// ascending order#

select *from employees order by ename desc; ///descending ORDER BY

select ename, job,salary from employees order by job, salary desc;


select count (*) from employees where job = 'clerk';

select job from emp;

select distinct job from emp;

select count (distinct(job)) from emp;


select empno, ename from employees;

insert into software(empno, ename) values('001', 'morgan');


RENAME employees to staff;

RENAME column salary to fees;

select count (*) from staff;


DESCRIBE TABLE software;

show COLUMNS from software; ///showing table structures

select * from sam;

select column1, COLUMN2, COLUMN3 FROM sam;



////referential integrity

ALTER TABLE Patient
ADD DoctorID INT;

ALTER TABLE Patient
ADD CONSTRAINT FK_DoctorID
FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID);




SELECT AVG(Age) AS AverageAge
FROM Patient;
SELECT MAX(Fees) AS MaxFees
FROM Patient;
SELECT COUNT(*) AS TotalPatients
FROM Patient;





---multiple parameters

CREATE PROCEDURE GetPatientInfo (@City NVARCHAR(50), @MinAge INT)
AS
BEGIN
    SELECT *
    FROM Patient
    WHERE City = @City AND Age >= @MinAge;
END;

-- Execute the procedure
EXEC GetPatientInfo 'Kampala', 25;




---COMPARISONS 
SELECT *
FROM Patient
WHERE Age = 40;

SELECT *
FROM Patient
WHERE Fees >= 1000;

SELECT *
FROM Patient
WHERE Name != 'John Doe';






-----LOGICAL OPERATORS
SELECT *
FROM Patient
WHERE Age > 30 AND City = 'Kampala';

SELECT *
FROM Patient
WHERE Age < 30 OR City = 'Kampala';

SELECT *
FROM Patient
WHERE NOT City = 'Kampala';




---CHANGING THE CHARACTER SIZES OF A  COLUMN
ALTER TABLE Patient
MODIFY Pname VARCHAR(60);





---CREATING VIEW
CREATE VIEW view_b AS
SELECT Address, SUM(Fees) AS TotalFees
FROM Patient
GROUP BY Address;




CREATE VIEW view_a AS SELECT * FROM Patient WHERE Address LIKE 'Kampala';



SELECT * FROM Patient;



CREATE TABLE TempPatient (
    PatientID INT,
    Name VARCHAR(100),
    Age INT,
    Address VARCHAR(255),
    DoctorID INT
);



---adding a new column
ALTER TABLE Patient
ADD DoctorID INT;


----names starting with letter m
SELECT name FROM your_table_name WHERE name LIKE 'M%';


SELECT name FROM your_table_name WHERE name LIKE '%m';




