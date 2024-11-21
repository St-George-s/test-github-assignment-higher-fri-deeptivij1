CREATE TABLE GnomePurchase (
    gnomePurchaseID VARCHAR(6) NOT NULL PRIMARY KEY,
    orderID VARCHAR(7) NOT NULL,
    gnomeID VARCHAR(5) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (gnomeID) REFERENCES Gnome(gnomeID)
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

INSERT INTO GnomePurchase VALUES("go0001","ord0001","gn001",4);
INSERT INTO GnomePurchase VALUES("go0002","ord0001","gn012",1);
INSERT INTO GnomePurchase VALUES("go0003","ord0001","gn023",1);
INSERT INTO GnomePurchase VALUES("go0004","ord0001","gn032",5);
INSERT INTO GnomePurchase VALUES("go0005","ord0001","gn035",5);
INSERT INTO GnomePurchase VALUES("go0006","ord0002","gn022",3);
INSERT INTO GnomePurchase VALUES("go0007","ord0002","gn026",4);
INSERT INTO GnomePurchase VALUES("go0008","ord0002","gn030",5);
INSERT INTO GnomePurchase VALUES("go0009","ord0003","gn001",3);
INSERT INTO GnomePurchase VALUES("go0010","ord0003","gn002",4);
INSERT INTO GnomePurchase VALUES("go0011","ord0003","gn010",2);
INSERT INTO GnomePurchase VALUES("go0012","ord0003","gn011",1);
INSERT INTO GnomePurchase VALUES("go0013","ord0003","gn028",5);
INSERT INTO GnomePurchase VALUES("go0014","ord0003","gn029",1);
INSERT INTO GnomePurchase VALUES("go0015","ord0003","gn034",4);
INSERT INTO GnomePurchase VALUES("go0016","ord0003","gn035",4);
INSERT INTO GnomePurchase VALUES("go0017","ord0004","gn030",5);
INSERT INTO GnomePurchase VALUES("go0018","ord0005","gn024",4);
INSERT INTO GnomePurchase VALUES("go0019","ord0006","gn006",2);
INSERT INTO GnomePurchase VALUES("go0020","ord0007","gn006",1);
INSERT INTO GnomePurchase VALUES("go0021","ord0007","gn014",3);
INSERT INTO GnomePurchase VALUES("go0022","ord0007","gn016",4);
INSERT INTO GnomePurchase VALUES("go0023","ord0007","gn018",2);
INSERT INTO GnomePurchase VALUES("go0024","ord0008","gn020",5);
INSERT INTO GnomePurchase VALUES("go0025","ord0008","gn024",5);
INSERT INTO GnomePurchase VALUES("go0026","ord0009","gn026",3);
INSERT INTO GnomePurchase VALUES("go0027","ord0010","gn029",1);
INSERT INTO GnomePurchase VALUES("go0028","ord0011","gn032",4);
INSERT INTO GnomePurchase VALUES("go0029","ord0012","gn035",1);
INSERT INTO GnomePurchase VALUES("go0030","ord0012","gn002",5);
INSERT INTO GnomePurchase VALUES("go0031","ord0012","gn004",3);
INSERT INTO GnomePurchase VALUES("go0032","ord0013","gn006",3);
INSERT INTO GnomePurchase VALUES("go0033","ord0014","gn008",5);
INSERT INTO GnomePurchase VALUES("go0034","ord0014","gn011",4);
INSERT INTO GnomePurchase VALUES("go0035","ord0014","gn012",2);
INSERT INTO GnomePurchase VALUES("go0036","ord0015","gn015",2);
INSERT INTO GnomePurchase VALUES("go0037","ord0016","gn019",3);
INSERT INTO GnomePurchase VALUES("go0038","ord0017","gn020",3);
INSERT INTO GnomePurchase VALUES("go0039","ord0018","gn023",1);
INSERT INTO GnomePurchase VALUES("go0040","ord0018","gn026",3);
INSERT INTO GnomePurchase VALUES("go0041","ord0018","gn029",4);
INSERT INTO GnomePurchase VALUES("go0042","ord0018","gn033",1);
INSERT INTO GnomePurchase VALUES("go0043","ord0019","gn034",2);
INSERT INTO GnomePurchase VALUES("go0044","ord0020","gn001",3);
INSERT INTO GnomePurchase VALUES("go0045","ord0020","gn003",4);
INSERT INTO GnomePurchase VALUES("go0046","ord0021","gn005",5);
INSERT INTO GnomePurchase VALUES("go0047","ord0022","gn006",5);
INSERT INTO GnomePurchase VALUES("go0048","ord0023","gn013",4);
INSERT INTO GnomePurchase VALUES("go0049","ord0024","gn018",2);
INSERT INTO GnomePurchase VALUES("go0050","ord0024","gn019",4);
INSERT INTO GnomePurchase VALUES("go0051","ord0024","gn025",2);
INSERT INTO GnomePurchase VALUES("go0052","ord0024","gn026",2);
INSERT INTO GnomePurchase VALUES("go0053","ord0024","gn030",5);
INSERT INTO GnomePurchase VALUES("go0054","ord0024","gn033",3);
INSERT INTO GnomePurchase VALUES("go0055","ord0025","gn035",4);
INSERT INTO GnomePurchase VALUES("go0056","ord0026","gn001",1);
INSERT INTO GnomePurchase VALUES("go0057","ord0027","gn002",3);
INSERT INTO GnomePurchase VALUES("go0058","ord0028","gn006",4);
INSERT INTO GnomePurchase VALUES("go0059","ord0029","gn012",4);
INSERT INTO GnomePurchase VALUES("go0060","ord0030","gn016",3);
INSERT INTO GnomePurchase VALUES("go0061","ord0031","gn020",5);
INSERT INTO GnomePurchase VALUES("go0062","ord0032","gn022",4);
INSERT INTO GnomePurchase VALUES("go0063","ord0033","gn025",1);
INSERT INTO GnomePurchase VALUES("go0064","ord0034","gn027",3);
INSERT INTO GnomePurchase VALUES("go0065","ord0035","gn030",4);
INSERT INTO GnomePurchase VALUES("go0066","ord0036","gn031",1);
INSERT INTO GnomePurchase VALUES("go0067","ord0037","gn032",1);
INSERT INTO GnomePurchase VALUES("go0068","ord0038","gn034",2);
INSERT INTO GnomePurchase VALUES("go0069","ord0038","gn035",3);
INSERT INTO GnomePurchase VALUES("go0070","ord0038","gn002",3);
INSERT INTO GnomePurchase VALUES("go0071","ord0039","gn004",3);
INSERT INTO GnomePurchase VALUES("go0072","ord0040","gn008",2);
INSERT INTO GnomePurchase VALUES("go0073","ord0041","gn009",1);
INSERT INTO GnomePurchase VALUES("go0074","ord0042","gn012",3);
INSERT INTO GnomePurchase VALUES("go0075","ord0043","gn013",5);
INSERT INTO GnomePurchase VALUES("go0076","ord0044","gn016",3);
INSERT INTO GnomePurchase VALUES("go0077","ord0044","gn018",2);
INSERT INTO GnomePurchase VALUES("go0078","ord0044","gn022",2);
INSERT INTO GnomePurchase VALUES("go0079","ord0044","gn023",4);
INSERT INTO GnomePurchase VALUES("go0080","ord0045","gn001",3);
INSERT INTO GnomePurchase VALUES("go0081","ord0046","gn005",5);
INSERT INTO GnomePurchase VALUES("go0082","ord0047","gn009",2);
INSERT INTO GnomePurchase VALUES("go0083","ord0048","gn011",5);
INSERT INTO GnomePurchase VALUES("go0084","ord0049","gn014",3);
INSERT INTO GnomePurchase VALUES("go0085","ord0050","gn016",1);
INSERT INTO GnomePurchase VALUES("go0086","ord0051","gn020",2);
INSERT INTO GnomePurchase VALUES("go0087","ord0051","gn022",4);
INSERT INTO GnomePurchase VALUES("go0088","ord0051","gn024",3);
INSERT INTO GnomePurchase VALUES("go0089","ord0052","gn027",4);
INSERT INTO GnomePurchase VALUES("go0090","ord0053","gn002",5);
INSERT INTO GnomePurchase VALUES("go0091","ord0054","gn004",4);
INSERT INTO GnomePurchase VALUES("go0092","ord0055","gn007",1);
INSERT INTO GnomePurchase VALUES("go0093","ord0056","gn009",5);
INSERT INTO GnomePurchase VALUES("go0094","ord0057","gn011",5);
INSERT INTO GnomePurchase VALUES("go0095","ord0057","gn013",1);
INSERT INTO GnomePurchase VALUES("go0096","ord0057","gn015",2);
INSERT INTO GnomePurchase VALUES("go0097","ord0058","gn018",4);
INSERT INTO GnomePurchase VALUES("go0098","ord0059","gn019",3);
INSERT INTO GnomePurchase VALUES("go0099","ord0060","gn022",5);
INSERT INTO GnomePurchase VALUES("go0100","ord0061","gn025",5);
INSERT INTO GnomePurchase VALUES("go0101","ord0062","gn026",5);
INSERT INTO GnomePurchase VALUES("go0102","ord0063","gn029",2);
INSERT INTO GnomePurchase VALUES("go0103","ord0064","gn031",4);
INSERT INTO GnomePurchase VALUES("go0104","ord0064","gn033",3);
INSERT INTO GnomePurchase VALUES("go0105","ord0064","gn035",5);
INSERT INTO GnomePurchase VALUES("go0106","ord0064","gn024",5);
INSERT INTO GnomePurchase VALUES("go0107","ord0064","gn026",4);
INSERT INTO GnomePurchase VALUES("go0108","ord0064","gn028",4);
INSERT INTO GnomePurchase VALUES("go0109","ord0064","gn029",5);
INSERT INTO GnomePurchase VALUES("go0110","ord0065","gn031",1);
INSERT INTO GnomePurchase VALUES("go0111","ord0066","gn032",5);
INSERT INTO GnomePurchase VALUES("go0112","ord0067","gn033",2);
INSERT INTO GnomePurchase VALUES("go0113","ord0068","gn034",5);
INSERT INTO GnomePurchase VALUES("go0114","ord0069","gn035",3);
INSERT INTO GnomePurchase VALUES("go0115","ord0070","gn003",1);
INSERT INTO GnomePurchase VALUES("go0116","ord0071","gn004",5);
INSERT INTO GnomePurchase VALUES("go0117","ord0072","gn007",3);
INSERT INTO GnomePurchase VALUES("go0118","ord0073","gn009",2);
INSERT INTO GnomePurchase VALUES("go0119","ord0074","gn010",4);
INSERT INTO GnomePurchase VALUES("go0120","ord0075","gn012",2);
INSERT INTO GnomePurchase VALUES("go0121","ord0076","gn013",2);
INSERT INTO GnomePurchase VALUES("go0122","ord0077","gn014",1);
INSERT INTO GnomePurchase VALUES("go0123","ord0078","gn015",2);
INSERT INTO GnomePurchase VALUES("go0124","ord0079","gn001",4);
INSERT INTO GnomePurchase VALUES("go0125","ord0080","gn002",3);
INSERT INTO GnomePurchase VALUES("go0126","ord0080","gn006",4);
INSERT INTO GnomePurchase VALUES("go0127","ord0081","gn009",5);
INSERT INTO GnomePurchase VALUES("go0128","ord0081","gn011",2);
INSERT INTO GnomePurchase VALUES("go0129","ord0082","gn014",3);
INSERT INTO GnomePurchase VALUES("go0130","ord0082","gn017",4);
INSERT INTO GnomePurchase VALUES("go0131","ord0082","gn021",4);
INSERT INTO GnomePurchase VALUES("go0132","ord0083","gn022",3);
INSERT INTO GnomePurchase VALUES("go0133","ord0084","gn024",3);
INSERT INTO GnomePurchase VALUES("go0134","ord0085","gn025",1);
INSERT INTO GnomePurchase VALUES("go0135","ord0086","gn027",2);
INSERT INTO GnomePurchase VALUES("go0136","ord0086","gn029",1);
INSERT INTO GnomePurchase VALUES("go0137","ord0086","gn031",5);
INSERT INTO GnomePurchase VALUES("go0138","ord0087","gn033",3);
INSERT INTO GnomePurchase VALUES("go0139","ord0087","gn034",4);
INSERT INTO GnomePurchase VALUES("go0140","ord0088","gn035",2);
INSERT INTO GnomePurchase VALUES("go0141","ord0089","gn001",1);
INSERT INTO GnomePurchase VALUES("go0142","ord0090","gn002",1);
INSERT INTO GnomePurchase VALUES("go0143","ord0091","gn006",3);
INSERT INTO GnomePurchase VALUES("go0144","ord0092","gn009",3);
INSERT INTO GnomePurchase VALUES("go0145","ord0093","gn011",1);
INSERT INTO GnomePurchase VALUES("go0146","ord0094","gn013",2);
INSERT INTO GnomePurchase VALUES("go0147","ord0095","gn014",3);
INSERT INTO GnomePurchase VALUES("go0148","ord0096","gn017",1);
INSERT INTO GnomePurchase VALUES("go0149","ord0096","gn019",1);
INSERT INTO GnomePurchase VALUES("go0150","ord0096","gn021",3);
INSERT INTO GnomePurchase VALUES("go0151","ord0096","gn023",2);
INSERT INTO GnomePurchase VALUES("go0152","ord0097","gn025",4);
INSERT INTO GnomePurchase VALUES("go0153","ord0097","gn027",2);
INSERT INTO GnomePurchase VALUES("go0154","ord0098","gn028",5);
INSERT INTO GnomePurchase VALUES("go0155","ord0098","gn030",5);
INSERT INTO GnomePurchase VALUES("go0156","ord0099","gn032",3);
INSERT INTO GnomePurchase VALUES("go0157","ord0099","gn033",2);
INSERT INTO GnomePurchase VALUES("go0158","ord0099","gn008",4);
INSERT INTO GnomePurchase VALUES("go0159","ord0099","gn011",3);
INSERT INTO GnomePurchase VALUES("go0160","ord0099","gn014",5);
INSERT INTO GnomePurchase VALUES("go0161","ord0100","gn016",5);
