CREATE DATABASE IF NOT EXISTS project1;
USE project1;

-- DDL
CREATE TABLE IF NOT EXISTS Doctor(
  doctorID INT PRIMARY KEY AUTO_INCREMENT,
  fullName VARCHAR(40) NOT NULL

);


-- DML
INSERT INTO Doctor(fullName) VALUES
('Ada Lovelace'),
('Alan Turing');


SELECT *
FROM Doctor;