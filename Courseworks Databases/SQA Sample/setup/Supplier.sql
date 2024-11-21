CREATE TABLE Supplier(
supplierCode varchar(255) NOT NULL,
supplierName varchar(255) NOT NULL,
email varchar(255) NOT NULL
);

-- The following may be added to the CREATE statement
-- Primary Key Syntax (added after field name and NOT NULL)
--     PRIMARY KEY (fieldName)
--          or for compound PK
--     CONSTRAINT PK_compoundFieldName PRIMARY KEY (field1,field2)
-- Foreign Key Syntax (added after field list)
--     FOREIGN KEY (field name) REFERENCES tableName(fieldName)
-- Text Field Max Size
--     Edit (255) to required length
-- Validation of length of text (added after create statement as new statement
--     CHECK (CHAR_LENGTH(fieldName) > value)
-- Range Check (added after field list)
--     CHECK (fieldName >= value)
--     CHECK (fieldName >= value AND fieldName <= value2)
-- Restricted choice
--     CHECK(fieldName in ('value1','value2','value3')) 

-- Note
-- At N5 Check constraints (that are ignored by a MySQL server) 
-- are being used instead of triggers.

INSERT INTO Supplier VALUES("S1326","Cuddle World","cuddleworld@uplook.co.uk");
INSERT INTO Supplier VALUES("S290","BurgersRus","burger@burgersrus.com");
INSERT INTO Supplier VALUES("S333","WonderPlay","info@wonderplay.co.uk");
INSERT INTO Supplier VALUES("S424","BeautyBomb","bb@beautybomb.com");
INSERT INTO Supplier VALUES("S443","Super Segways","contact@segwaayexperience.co.uk");
INSERT INTO Supplier VALUES("S455","Skaterz","bookings@skaterz.co.uk");
INSERT INTO Supplier VALUES("S568","Family Fun Club","info@famfun.co.uk");
INSERT INTO Supplier VALUES("S667","Escapers","escapers@escapers.com");
INSERT INTO Supplier VALUES("S721","SpaRoom","thespa@thesparoom.co.uk");
INSERT INTO Supplier VALUES("S756","JungleGym","exercise@thejunglegym.com");
INSERT INTO Supplier VALUES("S757","Gymtastic","getfit@thegym.co.uk");
INSERT INTO Supplier VALUES("S821","Speedy Pizza","info@speedypizza.org.uk");
INSERT INTO Supplier VALUES("S878","The Steak House","reservations@TSH.com");
INSERT INTO Supplier VALUES("S896","SkatePark","skaters@skatepark.com");
INSERT INTO Supplier VALUES("S998","Le Ritz Hotel","bookings@LeRitz.co.uk");
INSERT INTO Supplier VALUES("S999","Escape Rooms Ltd","danger@escaperoom.com");
