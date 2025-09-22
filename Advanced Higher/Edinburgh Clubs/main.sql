-- CREATE DATABASE SwimClubDB;
USE SwimClubDB;

-- CREATE TABLE Centre(
--     centreID INT NOT NULL PRIMARY KEY,
--     centreName VARCHAR(40) NOT NULL,
--     centreType VARCHAR(20) NOT NULL
-- )

-- CREATE TABLE Class(
--     classCode VARCHAR(4) NOT NULL PRIMARY KEY,
--     className VARCHAR(40) NOT NULL,
--     centreID INT NOT NULL,
--     level INT NOT NULL,
--     termStartDate DATE,
--     sessionType VARCHAR(12) NOT NULL,
--     startTime TIME NOT NULL,
--     pricePerPerson DECIMAL(6,2) NOT NULL,
--     FOREIGN KEY (centreID) REFERENCES Centre(centreID)
-- )

CREATE TABLE Member(
    memberNo INT NOT NULL PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    surname VARCHAR(20) NOT NULL,
    address VARCHAR(50) NOT NULL,
    town VARCHAR(30) NOT NULL,
    postcode VARCHAR(10) NOT NULL

)

CREATE TABLE Booking(
    classCode INT NOT NULL, 
    memberNo INT NOT NULL,
    startDate DATE NOT NULL,
    numberOfSessions INT NOT NULL,
    numberInParty INT NOT NULL
    PRIMARY KEY(classCode, memberNo, startDate)
)