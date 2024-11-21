CREATE TABLE Team(
  teamRef varchar(255) NOT NULL,
  teamName varchar(255) NOT NULL,
  headCoach varchar(255) NOT NULL,
  assistantCoach varchar(255) NOT NULL,
  PRIMARY KEY (teamRef)
);


-- Note
-- At N5 Check constraints (that are ignored by a MySQL server) 
-- are being used instead of triggers.

INSERT INTO Team VALUES("ENG","England","Jordan Walker","Francis Carroll");
INSERT INTO Team VALUES("NIR","Northern Ireland","Alex McCarthy","Adrian Thompson");
INSERT INTO Team VALUES("SCO","Scotland","Devon Jackson","Blake Shearer");
INSERT INTO Team VALUES("WAL","Wales","Jaden Wilson","Benny Fitzgerald");
