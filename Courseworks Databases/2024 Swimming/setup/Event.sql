CREATE TABLE Event(
  eventID varchar(255) NOT NULL,
  eventDate date NOT NULL,
  city varchar(255) NOT NULL,
  venue varchar(255) NOT NULL,
  PRIMARY KEY (eventID)
);

-- Note
-- At N5 Check constraints (that are ignored by a MySQL server) 
-- are being used instead of triggers.

INSERT INTO Event VALUES("Event 1","2024-01-06","Glasgow","Tollcross International Swimming Centre");
INSERT INTO Event VALUES("Event 2","2024-01-13","Leeds","John Charles Centre for Sport");
INSERT INTO Event VALUES("Event 3","2024-01-20","Bangor","Bangor Aurora Aquatic and Leisure Complex");
INSERT INTO Event VALUES("Event 4","2024-01-27","Cardiff","Cardiff International Pool");
