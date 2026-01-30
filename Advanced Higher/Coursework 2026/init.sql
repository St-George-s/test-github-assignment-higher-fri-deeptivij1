CREATE DATABASE IF NOT EXISTS project1;
USE project1;

DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Slot;
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS Patient;

-- -- CREATE statements
-- CREATE TABLE IF NOT EXISTS Doctor(
--   doctorID INT PRIMARY KEY AUTO_INCREMENT,
--   fullName VARCHAR(50) NOT NULL,
--   speciality VARCHAR(20) NOT NULL,
--   roomNo INT NOT NULL,
--   CONSTRAINT chk_speciality CHECK (speciality IN ('General', 'Sports', 'Dermatology', 'Oncology', 'Paediatrics', 'Radiology', 'Obs/Gynae', 'Cardiology', 'Psychiatry', 'ENT', 'Other'))
-- );

-- CREATE TABLE IF NOT EXISTS Slot(
--   slotID INT AUTO_INCREMENT PRIMARY KEY,
--   doctorID INT NOT NULL,
--   startTime DATETIME NOT NULL,
--   endTime DATETIME NOT NULL,
--   isAvailable BOOLEAN NOT NULL,
--   CONSTRAINT chk_startTime CHECK (startTime >= '2025-12-01 09:00:00' and startTime <= '2025-12-05 16:30:00'),
--   CONSTRAINT chk_endTime CHECK (startTime >= '2025-12-01 09:30:00' and startTime <= '2025-12-05 17:00:00'),
--   FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID)
-- );

-- CREATE TABLE IF NOT EXISTS Appointment(
--   apptID INT AUTO_INCREMENT PRIMARY KEY,
--   slotID INT NOT NULL,
--   patientID INT NOT NULL,
--   note VARCHAR(40),
--   FOREIGN KEY (slotID) REFERENCES Slot(slotID),
--   FOREIGN KEY (patientID) REFERENCES Patient(patientID)
-- );

-- CREATE TABLE IF NOT EXISTS Patient(
--   patientID INT AUTO_INCREMENT PRIMARY KEY,
--   fullName VARCHAR(50) NOT NULL,
--   dob DATE NOT NULL,
--   email VARCHAR(30) NOT NULL,
--   CONSTRAINT chk_dob CHECK (dob < DATE '2025-12-05'),
-- );