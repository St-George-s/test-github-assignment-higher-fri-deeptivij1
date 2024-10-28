CREATE TABLE CustomerOrder(
orderID varchar(255) NOT NULL,
custID int NOT NULL,
voucherID varchar(255) NOT NULL,
quantityPurchased int NOT NULL,
dateOrdered date NOT NULL
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

INSERT INTO CustomerOrder VALUES("X1256",5896,"V232",2,"2020-11-19");
INSERT INTO CustomerOrder VALUES("X8965",7606,"V232",4,"2021-01-15");
INSERT INTO CustomerOrder VALUES("X2356",7606,"V234",1,"2021-02-13");
INSERT INTO CustomerOrder VALUES("X8898",6357,"V235",1,"2021-02-03");
INSERT INTO CustomerOrder VALUES("X2459",8764,"V235",1,"2021-01-03");
INSERT INTO CustomerOrder VALUES("X7779",9966,"V235",1,"2021-01-19");
INSERT INTO CustomerOrder VALUES("X1598",6357,"V340",1,"2021-02-18");
INSERT INTO CustomerOrder VALUES("X1478",7894,"V345",1,"2021-02-14");
INSERT INTO CustomerOrder VALUES("X2369",2255,"V347",2,"2021-02-01");
INSERT INTO CustomerOrder VALUES("X4569",8989,"V347",3,"2020-11-30");
INSERT INTO CustomerOrder VALUES("X3214",9966,"V368",1,"2021-02-22");
INSERT INTO CustomerOrder VALUES("X6981",9129,"V369",4,"2020-12-17");
INSERT INTO CustomerOrder VALUES("X0369",9635,"V423",1,"2021-03-13");
INSERT INTO CustomerOrder VALUES("X9654",2679,"V445",1,"2021-01-22");
INSERT INTO CustomerOrder VALUES("X5012",7606,"V445",2,"2021-01-25");
INSERT INTO CustomerOrder VALUES("X7964",9988,"V445",1,"2021-02-18");
INSERT INTO CustomerOrder VALUES("X6655",9988,"V482",2,"2020-10-31");
INSERT INTO CustomerOrder VALUES("X3643",2987,"V482",3,"2020-10-31");
INSERT INTO CustomerOrder VALUES("X8531",7894,"V482",2,"2020-12-10");
INSERT INTO CustomerOrder VALUES("X6968",4567,"V482",1,"2021-02-27");
INSERT INTO CustomerOrder VALUES("X7563",3123,"V543",1,"2021-02-16");
INSERT INTO CustomerOrder VALUES("X9461",5896,"V543",1,"2021-02-01");
INSERT INTO CustomerOrder VALUES("X8642",3123,"V547",8,"2020-12-03");
INSERT INTO CustomerOrder VALUES("X5555",8989,"V554",2,"2021-01-01");
INSERT INTO CustomerOrder VALUES("X7915",4569,"V555",3,"2020-12-12");
INSERT INTO CustomerOrder VALUES("X8646",6357,"V582",3,"2020-12-18");
INSERT INTO CustomerOrder VALUES("X2323",4567,"V610",1,"2021-01-28");
INSERT INTO CustomerOrder VALUES("X5959",8764,"V610",1,"2021-02-28");
INSERT INTO CustomerOrder VALUES("X7534",2255,"V654",2,"2021-03-23");
INSERT INTO CustomerOrder VALUES("X9917",4567,"V654",3,"2021-02-27");
INSERT INTO CustomerOrder VALUES("X2364",6357,"V811",1,"2020-12-29");
INSERT INTO CustomerOrder VALUES("X3333",7606,"V852",2,"2021-02-01");
INSERT INTO CustomerOrder VALUES("X2378",2679,"V862",4,"2020-11-09");
INSERT INTO CustomerOrder VALUES("X8291",4567,"V862",1,"2021-02-13");
INSERT INTO CustomerOrder VALUES("X5665",4569,"V878",4878,"2020-12-11");
INSERT INTO CustomerOrder VALUES("X5648",8764,"V888",2,"2020-12-19");
INSERT INTO CustomerOrder VALUES("X9643",2987,"V890",2,"2021-01-21");
INSERT INTO CustomerOrder VALUES("X1534",9635,"V890",1,"2020-12-24");
INSERT INTO CustomerOrder VALUES("X9731",7894,"V890",4,"2020-12-22");
INSERT INTO CustomerOrder VALUES("X5646",3123,"V898",2,"2021-01-29");
INSERT INTO CustomerOrder VALUES("X7575",9129,"V898",2,"2021-01-26");
INSERT INTO CustomerOrder VALUES("X7557",5896,"V898",1,"2020-12-18");
INSERT INTO CustomerOrder VALUES("X5697",7894,"V924",1,"2021-01-31");
INSERT INTO CustomerOrder VALUES("X8111",8989,"V924",1,"2021-02-07");
