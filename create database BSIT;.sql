create database BSIT;

create TABLE Patient(
    PID VARCHAR(10) PRIMARY KEY,
    Pname VARCHAR(20),
    Address VARCHAR(20),
    Fees INT
);

INSERT INTO patient(PID, Pname, Address, Fees)
VALUES("P001", "Tom", "Kampala", 40000);

INSERT INTO patient(PID, Pname, Address, Fees)
VALUES("P002", "Agaba", "Entebbe", 16000);

SELECT * from patient;

ALTER TABLE Patient
ADD DoctorID INT;

CREATE VIEW view_a AS
SELECT *
FROM Patient
WHERE Address LIKE 'Kampala';


CREATE VIEW view_c AS
SELECT *
FROM Patient
WHERE Address LIKE '----';


CREATE VIEW view_d AS
SELECT Address, SUM(Fees) AS TotalFees
FROM Patient
GROUP BY Address;


ALTER TABLE Patient
MODIFY Pname VARCHAR(60);


SELECT *
FROM Patient
WHERE Fees> 30 AND Address = 'Kampala';

SELECT *
FROM Patient
WHERE Fees < 30 OR Address = 'Kampala';

SELECT *
FROM Patient
WHERE NOT Address = 'Kampala';





desc patient;




SELECT *
FROM Patient
WHERE Fees = 40;

SELECT *
FROM Patient
WHERE Fees >= 1000;

SELECT *
FROM Patient
WHERE Pname != 'Tom';







CREATE PROCEDURE GetPatientInfo (Address NVARCHAR(50), FeesINT)
AS
BEGIN
    SELECT *
    FROM Patient
    WHERE Address = Address AND Fees>= Fees;
END;

-- Execute the procedure
EXEC GetPatientInfo 'Kampala', 25;
