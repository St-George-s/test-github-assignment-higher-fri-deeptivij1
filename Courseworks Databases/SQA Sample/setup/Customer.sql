CREATE TABLE Customer(
custID int NOT NULL,
firstName varchar(255) NOT NULL,
surname varchar(255) NOT NULL,
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

INSERT INTO Customer VALUES(2255,"Julie","Wilson","julieW45@gmail.com");
INSERT INTO Customer VALUES(2679,"Innes","McCallum","im@rugby.com");
INSERT INTO Customer VALUES(2987,"Aziah","Moqsud","am1981@girlpower.com");
INSERT INTO Customer VALUES(3123,"Oliver","Alexander","skaterboi@skating.co.uk");
INSERT INTO Customer VALUES(4567,"Derrick","Paterson","grumpy@yahoo.com");
INSERT INTO Customer VALUES(4569,"Jennifer","Wilson","mrswilson81@hotmail.com");
INSERT INTO Customer VALUES(5896,"Pam","Jones","jonsey67@google.com");
INSERT INTO Customer VALUES(6357,"Uichin","Chan","uchan2@webmail.co.uk");
INSERT INTO Customer VALUES(7606,"Lloyd","Oteniya","thedoc89@blueyonder.co.uk");
INSERT INTO Customer VALUES(7894,"Becky","Bennett","rbennett99@webmail.co.uk");
INSERT INTO Customer VALUES(8764,"Imran","Khan","immyk9@hotmail.com");
INSERT INTO Customer VALUES(8989,"Lottie","Rose","puppylove5@gmail.com");
INSERT INTO Customer VALUES(9129,"Bailey","Donald","bailey10@bluesky.com");
INSERT INTO Customer VALUES(9635,"Chukka","Radebe","musicman@music.com");
INSERT INTO Customer VALUES(9966,"Neville","Wilson","nevs@purfect.com");
INSERT INTO Customer VALUES(9988,"Graham","Brown","GBroon101@hotmail.com");