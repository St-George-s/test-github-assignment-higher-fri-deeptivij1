CREATE TABLE Swimmer(
  swimmerID varchar(255) NOT NULL,
  initial varchar(255) NOT NULL,
  surname varchar(255) NOT NULL,
  swimCategory varchar(255) NOT NULL,
  teamRef varchar(255) NOT NULL,
  PRIMARY KEY (swimmerID),
  FOREIGN KEY (teamRef) REFERENCES Team(teamRef)
);
-- Note
-- At N5 Check constraints (that are ignored by a MySQL server) 
-- are being used instead of triggers.

INSERT INTO Swimmer VALUES("ENG-A1","F","Adams","Advanced","ENG");
INSERT INTO Swimmer VALUES("ENG-A2","G","King","Advanced","ENG");
INSERT INTO Swimmer VALUES("ENG-A3","L","Slorance","Advanced","ENG");
INSERT INTO Swimmer VALUES("ENG-A4","J","Smith","Advanced","ENG");
INSERT INTO Swimmer VALUES("ENG-I1","A","Jackson","Intermediate","ENG");
INSERT INTO Swimmer VALUES("ENG-I2","D","Chaudhry","Intermediate","ENG");
INSERT INTO Swimmer VALUES("ENG-I3","T","Rivani","Intermediate","ENG");
INSERT INTO Swimmer VALUES("ENG-I4","M","Abbott","Intermediate","ENG");
INSERT INTO Swimmer VALUES("NIR-A1","D","Brown","Advanced","NIR");
INSERT INTO Swimmer VALUES("NIR-A2","L","Kelly","Advanced","NIR");
INSERT INTO Swimmer VALUES("NIR-A3","C","Hicks","Advanced","NIR");
INSERT INTO Swimmer VALUES("NIR-A4","R","Hudson","Advanced","NIR");
INSERT INTO Swimmer VALUES("NIR-I1","S","Johnston","Intermediate","NIR");
INSERT INTO Swimmer VALUES("NIR-I2","M","McGowan","Intermediate","NIR");
INSERT INTO Swimmer VALUES("NIR-I3","F","Miller","Intermediate","NIR");
INSERT INTO Swimmer VALUES("NIR-I4","B","Murphy","Intermediate","NIR");
INSERT INTO Swimmer VALUES("SCO-A1","D","Ballantyne","Advanced","SCO");
INSERT INTO Swimmer VALUES("SCO-A2","L","Bishop","Advanced","SCO");
INSERT INTO Swimmer VALUES("SCO-A3","D","Tsang","Advanced","SCO");
INSERT INTO Swimmer VALUES("SCO-A4","V","Rose","Advanced","SCO");
INSERT INTO Swimmer VALUES("SCO-I1","I","Arthur","Intermediate","SCO");
INSERT INTO Swimmer VALUES("SCO-I2","K","Kahn","Intermediate","SCO");
INSERT INTO Swimmer VALUES("SCO-I3","A","McDonald","Intermediate","SCO");
INSERT INTO Swimmer VALUES("SCO-I4","S","Anderson","Intermediate","SCO");
INSERT INTO Swimmer VALUES("WAL-A1","S","Adams","Advanced","WAL");
INSERT INTO Swimmer VALUES("WAL-A2","C","Jones","Advanced","WAL");
INSERT INTO Swimmer VALUES("WAL-A3","W","Hudson","Advanced","WAL");
INSERT INTO Swimmer VALUES("WAL-A4","E","Shearer","Advanced","WAL");
INSERT INTO Swimmer VALUES("WAL-I1","M","Davis","Intermediate","WAL");
INSERT INTO Swimmer VALUES("WAL-I2","E","Jones","Intermediate","WAL");
INSERT INTO Swimmer VALUES("WAL-I3","R","McGregor","Intermediate","WAL");
INSERT INTO Swimmer VALUES("WAL-I4","E","Ripley","Intermediate","WAL");
