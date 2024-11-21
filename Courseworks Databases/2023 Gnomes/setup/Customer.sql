CREATE TABLE Customer(
customerID varchar(5) NOT NULL PRIMARY KEY,
forename varchar(30) NOT NULL,
surname varchar(30) NOT NULL,
houseNumber int NOT NULL,
streetName varchar(50) NOT NULL,
postcode varchar(8) NOT NULL,
emailAddress varchar(50) NOT NULL
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

INSERT INTO Customer VALUES("c0001","Klara","Couch",67,"Haven Boulevard","GU26 6TQ","klara.couch@coolmail.com");
INSERT INTO Customer VALUES("c0002","Emmanuel","Fadipe",98,"Onyx Street","WA1 3QN","mannyfadipe@beemail.com");
INSERT INTO Customer VALUES("c0003","Marion","Sheppard",53,"Honor Row","BS27 3TN","marion.sheppard@yeehaa.com");
INSERT INTO Customer VALUES("c0004","Ravi","Aziz",136,"Heart Way","WA1 2LD","ravi.aziz@jack.net");
INSERT INTO Customer VALUES("c0005","Ada","Bautista",14,"Sycamore Avenue","NE4 9PS","ada@coolmail.com");
INSERT INTO Customer VALUES("c0006","Arsalan","Southern",160,"Chestnut Street","HR9 7QX","arsalan.southern@yeehaa.com");
INSERT INTO Customer VALUES("c0007","Kacper","Libera",44,"Chapel Avenue","BA1 5BW","kacper@hardy.biz");
INSERT INTO Customer VALUES("c0008","Kenan","Ali",199,"Bloomfield Route","BT6 0ES","kenan@beemail.com");
INSERT INTO Customer VALUES("c0009","Humairaa","Barajas",52,"Hope Way","HR9 7XQ","humairaa.barajas2@yeehaa.com");
INSERT INTO Customer VALUES("c0010","Gerard","Gallegos",190,"Victory Row","B75 6TG","gerard.gallegos@yeehaa.com");
INSERT INTO Customer VALUES("c0011","Raheem","Saleem",4,"Nova Boulevard","OL15 9HR","raheem@ferry.com");
INSERT INTO Customer VALUES("c0012","Shani","Navarro",7,"Moon Street","DA16 2QQ","shani.navarro@yeehaa.com");
INSERT INTO Customer VALUES("c0013","Carlo","Hamer",162,"Green Lane","OX20 1TH","carlo.hamertorp@beemail.com");
INSERT INTO Customer VALUES("c0014","Deon","Bonilla",52,"West Way","SO53 1GR","deon.bonilla@heller.com");
INSERT INTO Customer VALUES("c0015","Tre","Steele",99,"High Route","SK7 3LQ","tre.steeler@beemail.com");
INSERT INTO Customer VALUES("c0016","Dominika","Marchewka",155,"Prince Route","NG17 2HU","dom.marchewka@coolmail.com");
INSERT INTO Customer VALUES("c0017","Hareem","Coleman",164,"Underwood Avenue","CA13 0QL","hareem.coleman@coolmail.com");
INSERT INTO Customer VALUES("c0018","Vinay","Knight",181,"Sycamore Lane","GY1 4AD","vinay.knight@yeehaa.com");
INSERT INTO Customer VALUES("c0019","Cole","Dunlop",169,"Blossom Route","SE6 3BH","cole.dunlop@coolmail.com");
INSERT INTO Customer VALUES("c0020","Mahi","Andrade",185,"Princess Lane","B77 3BG","mahi.andrade@turner.com");
INSERT INTO Customer VALUES("c0021","Oscar","Tate",25,"Liberty Boulevard","EX33 1AR","oscar.tate@yeehaa.com");
INSERT INTO Customer VALUES("c0022","Ashwin","Bateman",173,"Cross Street","LU4 9JQ","ashwin.bateman@coolmail.com");
INSERT INTO Customer VALUES("c0023","Ayyan","Brennan",153,"Jade Route","CV10 7JL","ayyan.brennan@boehm.info");
INSERT INTO Customer VALUES("c0024","Ida","Simmonds",153,"Mount Passage","FY4 1NU","ida.simmond@yeehaa.com");
INSERT INTO Customer VALUES("c0025","Alastair","Maynard",198,"Providence Boulevard","PR7 4GZ","alastair.maynard@coolmail.com");
INSERT INTO Customer VALUES("c0026","Gurveer","Thompson",108,"Windmill Boulevard","LN2 4BU","gurveer.thompson@gutkowski.com");
INSERT INTO Customer VALUES("c0027","Farhana","Deacon",8,"Brewer Row","M12 4UU","farhana@beemail.com");
INSERT INTO Customer VALUES("c0028","Melissa","Beltran",109,"Anchor Way","BT30 7UG","melissa.beltran@jacobs.biz");
INSERT INTO Customer VALUES("c0029","May","Hawes",138,"Oceanview Street","TS22 5FS","may@von.org");
INSERT INTO Customer VALUES("c0030","Neal","Salt",139,"Barley Route","GU26 6TQ","neal.salt@dooley.org");
INSERT INTO Customer VALUES("c0031","David","Ybet",18,"Sugarplum Avenue","WA1 3QN","dave.ybet@coolmail.com");
INSERT INTO Customer VALUES("c0032","Marilyn","Meza",61,"Clarity Street","BS27 3TN","marilyne@beemail.com");
INSERT INTO Customer VALUES("c0033","Dominik","Edmonds",160,"Long Boulevard","WA1 2LD","dominik.edmonds@yeehaa.com");
INSERT INTO Customer VALUES("c0034","Emilie","Strong",199,"Green Street","NE4 9PS","emilie.strong@beemail.com");
INSERT INTO Customer VALUES("c0035","Fahima","Mcclain",39,"Windmill Passage","HR9 7QX","fahima.mcclain@feeney.com");
INSERT INTO Customer VALUES("c0036","Jun","Hirst",184,"Lily Row","BA1 5BW","jun.hirst@lowe.com");
INSERT INTO Customer VALUES("c0037","Tea","Dupont",6,"School Street","BT6 0ES","tea.dupont@yeehaa.com");
INSERT INTO Customer VALUES("c0038","Derek","Vega",151,"Lower Passage","HR9 7XQ","derek.vega@coolmail.com");
INSERT INTO Customer VALUES("c0039","Nayla","Mccray",6,"East Passage","B75 6TG","nayla.mccray@yeehaa.com");
INSERT INTO Customer VALUES("c0040","Hope","Uti",128,"Diamond Row","N17 9SJ","hope.uti@coolmail.com");
INSERT INTO Customer VALUES("c0041","Ayden","Harrell",159,"Theater Avenue","LU3 2AL","ayden.harrell@hackett.org");
INSERT INTO Customer VALUES("c0042","Caiden","Hebert",76,"Bard Row","BL3 3TG","caiden.hebert@coolmail.com");
INSERT INTO Customer VALUES("c0043","Abdurahman","Luna",33,"North Avenue","DE22 1JZ","abdurahman.luna@coolmail.com");
INSERT INTO Customer VALUES("c0044","Mack","Preston",104,"Shade Street","PE22 0JG","mack.preston@yeehaa.com");
INSERT INTO Customer VALUES("c0045","Arissa","Davenport",114,"Coastline Avenue","SA5 4BW","arissa.davenporte@coolmail.com");
INSERT INTO Customer VALUES("c0046","Asha","Bob",112,"Winter Boulevard","BL3 1SR","asha.bobl@yeehaa.info");
INSERT INTO Customer VALUES("c0047","Samuel","Ngand'u",196,"Seaview Row","DD2 2BB","sam.ngandu@yeehaa.com");
INSERT INTO Customer VALUES("c0048","Kieran","Brown",107,"Crown Lane","M41 6DU","kieran.brown@coolmail.com");
INSERT INTO Customer VALUES("c0049","Fern","Orozco",1,"Emerald Avenue","GU31 5SP","fern@beemail.com");
INSERT INTO Customer VALUES("c0050","Roma","Ross",50,"General Street","WF2 7EY","roma@beemail.com");
INSERT INTO Customer VALUES("c0051","Shannen","Senior",155,"Harbor Row","BT19 6WN","shannen.senior@yeehaa.com");
INSERT INTO Customer VALUES("c0052","Manveer","Duggan",1,"Cave Avenue","BA14 6JS","manveer.duggan@coolmail.com");
INSERT INTO Customer VALUES("c0053","Ami","Clayton",101,"Long Lane","TA21 8HZ","ami.clayton@beemail.com");
INSERT INTO Customer VALUES("c0054","Melina","Santiago",40,"Green Passage","TD8 6NJ","melina.santiago@coolmail.com");
INSERT INTO Customer VALUES("c0055","Cain","Wilson",136,"Delta Route","DE55 1AE","cain.wilson@coolmail.com");
INSERT INTO Customer VALUES("c0056","Neil","Bellamy",156,"Wellness Avenue","OL11 2BH","neil.bellamy@coolmail.com");
INSERT INTO Customer VALUES("c0057","Griff","Croft",65,"Vale Avenue","BS32 8HL","griff.croft@yeehaa.com");
INSERT INTO Customer VALUES("c0058","Sandy","Kerr",41,"Cliff Avenue","OX1 4AZ","gail.lloyd@coolmail.com");
INSERT INTO Customer VALUES("c0059","Sebastien","Livingston",4,"Blossom Passage","KA9 2EH","sebastien.livingston@beemail.com");
INSERT INTO Customer VALUES("c0060","Menaal","Molloy",154,"Blessing Lane","WS11 5BU","menaal.molloy@yeehaa.com");
INSERT INTO Customer VALUES("c0061","Martha","Novak",22,"Brewer Lane","TQ9 5PN","martha.novak@coolmail.com");
INSERT INTO Customer VALUES("c0062","Leigh","Haney",142,"Emerald Route","LS8 3BX","leigh.haney@yeehaa.com");
INSERT INTO Customer VALUES("c0063","Joann","Stein",98,"Honor Street","PL17 8HW","joann.stein@yeehaa.com");
INSERT INTO Customer VALUES("c0064","Ed","Payne",19,"Art Row","TW13 4JL","ed.payneh@coolmail.com");
INSERT INTO Customer VALUES("c0065","Alexa","Mcgowan",158,"Cavern Street","EX15 2AB","alexa.mcgowan@beemail.com");
INSERT INTO Customer VALUES("c0066","Akshay","Holmes",125,"Delta Street","SR4 9AY","akshay.holmes@beemail.com");
INSERT INTO Customer VALUES("c0067","Lorraine","Doyle",127,"Vermilion Lane","SE9 2LP","lorraine.doyle@yeehaa.com");
INSERT INTO Customer VALUES("c0068","Ahsan","Mckeown",169,"Gilded Route","OX16 9FH","ahsan.mckeow@beemail.com");
INSERT INTO Customer VALUES("c0069","Maliha","Ashton",172,"Prince Avenue","CH45 4QL","maliha.ashton@@yeehaa.com");
INSERT INTO Customer VALUES("c0070","Faizan","Sherman",58,"Cypress Passage","FY2 9PS","faizan.sherman@@yeehaa.com");
INSERT INTO Customer VALUES("c0071","Mollie","Howell",162,"Windmill Avenue","SM2 7HZ","mollie.howell@yeehaa.com");
INSERT INTO Customer VALUES("c0072","Gianni","Sawyer",33,"Sun Street","NN1 3ND","gianni.sawyer@coolmail.com");
INSERT INTO Customer VALUES("c0073","Montgomery","Estrada",89,"Brewer Passage","EH33 2NZ","montgomery.estrada@beemail.com");
INSERT INTO Customer VALUES("c0074","Sulayman","Williams",53,"Orchid Passage","ME10 1JG","sulayman.williams@coolmail.com");
INSERT INTO Customer VALUES("c0075","Mysha","Valdez",13,"Ruby Lane","M16 0HA","mysha@yeehaa.com");
INSERT INTO Customer VALUES("c0076","Veronica","Blackmore",72,"Wetland Avenue","LE12 9EW","veronica@coolmail.com");
INSERT INTO Customer VALUES("c0077","Jillian","Ewing",102,"Beachside Street","HX7 5RT","jillian.ewing@yeehaa.com");
INSERT INTO Customer VALUES("c0078","Jada","Sharp",180,"Pearl Passage","BT92 6HU","jada.sharp@coolmail.com");
INSERT INTO Customer VALUES("c0079","Maha","Weber",111,"Bliss Lane","G53 5JA","maha.weber@yeehaa.com");
INSERT INTO Customer VALUES("c0080","Ella","Ferrell",189,"Colonel Boulevard","LA11 6PU","ella.ferrell@coolmail.com");
INSERT INTO Customer VALUES("c0081","Muhamed","Adamson",177,"Globe Lane","DT2 7AF","muhamed.zdamson@coolmail.com");
INSERT INTO Customer VALUES("c0082","Calista","Heath",119,"Ferry Row","GU52 7SQ","calista.heath@beemail.com");
INSERT INTO Customer VALUES("c0083","Alanah","Rossi",171,"Grand Boulevard","B67 9EL","alanah.rossi@yeehaa.com");
INSERT INTO Customer VALUES("c0084","Jonny","Rodrigues",129,"Brook Way","IM3 2AH","jonny.rodriguesn@yeehaa.com");
INSERT INTO Customer VALUES("c0085","Ava-Grace","Barry",38,"Seacoast Boulevard","ME17 3LW","ava.barry@beemail.com");
INSERT INTO Customer VALUES("c0086","Betsy","Burns",109,"Gem Row","ME19 4GJ","betsy.burns@yeehaa.com");
INSERT INTO Customer VALUES("c0087","Dulcie","Howells",130,"Peace Route","S43 1HA","dulcie.howells@beemail.com");
INSERT INTO Customer VALUES("c0088","Dawid","Chambers",63,"Orchard Lane","OL9 9EE","dawid.chamber@yeehaa.com");
INSERT INTO Customer VALUES("c0089","Vikki","Ho",57,"Cliff Way","NG5 5RJ","vikki.ho@yeehaa.com");
INSERT INTO Customer VALUES("c0090","Kornelia","Cooley",98,"Palm Lane","CA25 5AZ","kornelia.cooley@coolmail.com");
