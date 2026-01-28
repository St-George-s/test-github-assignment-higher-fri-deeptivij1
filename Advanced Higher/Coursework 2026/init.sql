CREATE DATABASE IF NOT EXISTS project1;
USE project1;

-- All create statements DDL
CREATE TABLE IF NOT EXISTS Doctor(
  doctorID INT PRIMARY KEY AUTO_INCREMENT,
  fullName VARCHAR(50) NOT NULL
  speciality VARCHAR(20) NOT NULL CHECK (speciality IN ('General', 'Sports', 'Dermatology', 'Oncology', 'Paediatrics', 'Radiology', 'Obs/Gynae', 'Cardiology', 'Psychiatry', 'ENT', 'Other')) 
  roomNo INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Slot(
  slotID INT AUTO_INCREMENT PRIMARY KEY 
  doctorID INT NOT NULL
  startTime DATETIME NOT NULL CHECK (2025-12-01 09:00:00 <= startTime <= 2025-12-05 16:30:00)
  endTime DATETIME NOT NULL CHECK (2025-12-01 09:30:00 <= startTime <= 2025-12-05 17:00:00)
  isAvailable BOOLEAN NOT NULL
  FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID)
);

CREATE TABLE IF NOT EXISTS Appointment(
  apptID INT AUTO_INCREMENT PRIMARY KEY
  slotID INT NOT NULL
  patientID INT NOT NULL
  note VARCHAR(40)
  FOREIGN KEY (slotID) REFERENCES Slot(slotID)
  FOREIGN KEY (patientID) REFERENCES Patient(patientID)
);

CREATE TABLE IF NOT EXISTS Patient(
  patientID INT AUTO_INCREMENT PRIMARY KEY
  fullName VARCHAR(50) NOT NULL
  dob DATE NOT NULL CHECK (dob < 2025-12-05)
  email VARCHAR(30) NOT NULL
);

-- INSERT statements
-- DML
INSERT INTO Doctor(fullName, speciality, roomNo )
VALUES
('Dr. Alice Morgan', 'General', 101),
('Dr. Brian Osei', 'General', 102),
('Dr. Carla Ruiz', 'Sports', 103),
('Dr. Daniel Foster', 'Sports', 104),
('Dr. Emma Chen', 'Dermatology', 105),
('Dr. Faisal Khan', 'Oncology', 106),
('Dr. Grace Holloway', 'Oncology', 107),
('Dr. Hannah Patel', 'Paediatrics', 108),
('Dr. Ivan Petrov', 'Paediatrics', 109),
('Dr. Julia Roberts', 'Radiology', 110),
('Dr. Kevin Mensah', 'Obs/Gynae', 111),
('Dr. Linda Okafor', 'Obs/Gynae', 112),
('Dr. Michael Stone', 'Cardiology', 113),
('Dr. Nadia Al-Sayed', 'Psychiatry', 114),
('Dr. Oliver Brown', 'ENT', 115),
('Dr. Priya Nair', 'Other', 116),
('Dr. Quentin Blake', 'Other', 117),
('Dr. Rosa Martinez', 'Other', 118);
;

SELECT *
FROM Doctor;