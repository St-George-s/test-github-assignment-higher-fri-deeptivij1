CREATE DATABASE IF NOT EXISTS project1;
USE project1;

DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Slot;
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS Patient;

-- All create statements DDL
CREATE TABLE IF NOT EXISTS Doctor(
  doctorID INT PRIMARY KEY AUTO_INCREMENT,
  fullName VARCHAR(50) NOT NULL,
  speciality VARCHAR(20) NOT NULL,
  roomNo INT NOT NULL,
  CONSTRAINT chk_speciality CHECK (speciality IN ('General', 'Sports', 'Dermatology', 'Oncology', 'Paediatrics', 'Radiology', 'Obs/Gynae', 'Cardiology', 'Psychiatry', 'ENT', 'Other'))
);
