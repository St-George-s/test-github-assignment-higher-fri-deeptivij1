CREATE TABLE Voucher(
voucherID varchar(255) NOT NULL,
voucherName varchar(255) NOT NULL,
category varchar(255) NOT NULL,
price float(6,2) NOT NULL,
expiryDate date NOT NULL,
supplierCode varchar(255) NOT NULL,
quantityAvailable int NOT NULL
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

INSERT INTO Voucher VALUES("V890","Escape room for 10","Adventure",86.00,"2022-11-30","S999",100);
INSERT INTO Voucher VALUES("V369","Experience an escape room for 2","Adventure",20.00,"2022-11-30","S999",100);
INSERT INTO Voucher VALUES("V368","Experience an escape room for 4","Adventure",32.00,"2022-11-30","S999",25);
INSERT INTO Voucher VALUES("V862","Afternoon tea and fizz for 2","Food",25.00,"2022-09-30","S998",50);
INSERT INTO Voucher VALUES("V555","Skate park entrance","Adventure",18.00,"2022-12-26","S896",60);
INSERT INTO Voucher VALUES("V547","Scooter hire and lesson","Adventure",30.00,"2023-01-01","S896",45);
INSERT INTO Voucher VALUES("V543","Skate park and lunch","Adventure",25.00,"2022-12-31","S896",200);
INSERT INTO Voucher VALUES("V234","Steak and side for two","Food",24.00,"2022-11-01","S878",75);
INSERT INTO Voucher VALUES("V554","Pizza for two","Food",12.00,"2022-10-13","S821",50);
INSERT INTO Voucher VALUES("V235","Pizzas and sides for two","Food",15.00,"2022-10-13","S821",50);
INSERT INTO Voucher VALUES("V811","Gym session for one","Adventure",3.00,"2022-12-25","S757",40);
INSERT INTO Voucher VALUES("V582","Gym pass 1 month","Adventure",15.00,"2022-12-25","S757",40);
INSERT INTO Voucher VALUES("V340","Gym pass for one week","Adventure",5.00,"2022-12-25","S757",40);
INSERT INTO Voucher VALUES("V888","Gym pass for 2","Adventure",6.00,"2022-12-31","S756",100);
INSERT INTO Voucher VALUES("V445","Massage escape room","Beauty",20.00,"2022-11-23","S721",150);
INSERT INTO Voucher VALUES("V423","Manicure and facial","Beauty",15.00,"2022-11-23","S721",50);
INSERT INTO Voucher VALUES("V876","Double escape room adventure","Adventure",40.00,"2022-10-27","S667",70);
INSERT INTO Voucher VALUES("V852","Softplay and cake","Family",6.00,"2022-10-31","S568",25);
INSERT INTO Voucher VALUES("V878","Skate park and lunch","Adventure",28.00,"2021-02-28","S455",60);
INSERT INTO Voucher VALUES("V610","Segway special - escape to the country","Family",20.00,"2022-10-25","S443",200);
INSERT INTO Voucher VALUES("V345","Cut & Colour","Beauty",22.00,"2022-12-01","S424",20);
INSERT INTO Voucher VALUES("V347","Massage and facial","Beauty",14.00,"2022-12-22","S424",30);
INSERT INTO Voucher VALUES("V924","Bowling and burgers","Family",25.00,"2022-10-16","S333",50);
INSERT INTO Voucher VALUES("V898","Trampoline","Family",4.00,"2022-10-23","S333",60);
INSERT INTO Voucher VALUES("V654","Softplay and lunch for 2","Family",12.00,"2022-10-31","S333",45);
INSERT INTO Voucher VALUES("V232","Burgers 2 for �20","Food",20.00,"2022-12-01","S290",100);
INSERT INTO Voucher VALUES("V482","Teddy Bears' Picnic","Family",10.00,"2021-12-31","S1326",30);
