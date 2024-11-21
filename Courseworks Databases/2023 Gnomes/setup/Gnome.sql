CREATE TABLE Gnome(
gnomeID varchar(5) NOT NULL PRIMARY KEY,
gnomeName varchar(25) NOT NULL,
description varchar(150) NOT NULL,
unitPrice int NOT NULL
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

INSERT INTO Gnome VALUES("gn001","Maximilian","Solar Garden Gnome",8);
INSERT INTO Gnome VALUES("gn002","Aiko","Outdoor Gnome Reading a Book Statue",7);
INSERT INTO Gnome VALUES("gn003","Belita","Mariachi Garden Gnome Statue",15);
INSERT INTO Gnome VALUES("gn004","Danny","Gnome Statue With solar powered Globe Lights",12);
INSERT INTO Gnome VALUES("gn005","Koemi","Gnome With Sunglasses",10);
INSERT INTO Gnome VALUES("gn006","Miette","Gnomes Hanging Swing Outdoor",12);
INSERT INTO Gnome VALUES("gn007","Rowan","Cottage Gnome Statue",8);
INSERT INTO Gnome VALUES("gn008","Tulla","Gnome On Toilet",13);
INSERT INTO Gnome VALUES("gn009","Yves","Hanging Garden Gnome",15);
INSERT INTO Gnome VALUES("gn010","Babak","Old Man Garden Gnome",11);
INSERT INTO Gnome VALUES("gn011","Dell","Knothole Gnome",8);
INSERT INTO Gnome VALUES("gn012","Fishel","Swinging on Rope Outdoor Decorative Gnome",13);
INSERT INTO Gnome VALUES("gn013","Gorman","Fishing Gnome Garden Statue",5);
INSERT INTO Gnome VALUES("gn014","Hewitt","Outdoor Gnome and Bird Feeder Statue",7);
INSERT INTO Gnome VALUES("gn015","Kane","Tree Hugger Gnome",6);
INSERT INTO Gnome VALUES("gn016","Lorcan","Pixie Sat on Mushrooms Outdoor Garden",11);
INSERT INTO Gnome VALUES("gn017","Tomlin","Bird Feeder Statue",14);
INSERT INTO Gnome VALUES("gn018","Luca","Garden Gnome with Squirrel",11);
INSERT INTO Gnome VALUES("gn019","Nicola","Zen Gnome Statue",8);
INSERT INTO Gnome VALUES("gn020","Zhenya","Cat Eating Gnome Garden Ornament",15);
INSERT INTO Gnome VALUES("gn021","Garder","Armory Mosaic with a Lantern Garden",11);
INSERT INTO Gnome VALUES("gn022","Wayrick","Spirit Garden Wall Decor",11);
INSERT INTO Gnome VALUES("gn023","Eowyn","Pixie Outdoor Garden Statue",12);
INSERT INTO Gnome VALUES("gn024","Aldon","Mystical Treant Man Wall Decor",15);
INSERT INTO Gnome VALUES("gn025","Samuel","Sunflower Gnome Statue",17);
INSERT INTO Gnome VALUES("gn026","Coimin","Toadstool Figurine with Solar Light",7);
INSERT INTO Gnome VALUES("gn027","Carlin","Troll Riding Motorcycle Statue",6);
INSERT INTO Gnome VALUES("gn028","Jenna","Stinky Gnome",14);
INSERT INTO Gnome VALUES("gn029","Maleah","Squirrel Garden Statue",6);
INSERT INTO Gnome VALUES("gn030","Posy","Gnome with Flower Garden Statue",15);
INSERT INTO Gnome VALUES("gn031","Tawnie","Fairy Garden Set",14);
INSERT INTO Gnome VALUES("gn032","Viveca","Gnome with 2 Squirrels",7);
INSERT INTO Gnome VALUES("gn033","Arno","Pixie Sat on Mushroom Thinking",10);
INSERT INTO Gnome VALUES("gn034","Cerin","Kiss and Tell Gnomes",6);
INSERT INTO Gnome VALUES("gn035","Egan","Gnome with Bird on Hand",10);
