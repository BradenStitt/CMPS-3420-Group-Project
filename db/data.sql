-- Need to temporarily disable foreign keys while creating tables with circular dependencies.
SET foreign_key_checks = 0;

-- Setup Data for Venue Table
INSERT INTO Venue (Venue_Name, Venue_Address, Capacity)
VALUES 
('Crypto.com Arena', '1111 S Figueroa Street, Los Angeles, CA 90015', 20000),
("Hollywood Bowl", "2301 Highland Avenue, Los Angeles, CA 90068", 17500),
("The Kia Forum", "3900 W Manchester Boulevard, Inglewood, CA 90305", 17505),
("Madison Square Garden", "4 Pennsylvania Plaza, New York, NY 10001", 19500),
("Sphere", "255 Sands Avenue, Las Vegas, NV 89169", 18600),
("AT&T Stadium", "1 AT&T Way, Arlington, TX 76011", 94000),
("Barclay's Center", "620 Atlantic Avenue, Brooklyn, NY 11217", 19000),
("MetLife Stadium", "1 MetLife Stadium Drive, East Rutherford, NJ 07073", 90000),
("Red Rocks Amphitheater", "18300 W Alameda Parkway, Morrison, CO 80465", 9545),
("Ryman Auditorium", "116 5th Avenue N, Nashville, TN 37219", 2300),
("SoFi Stadium", "1001 S Stadium Drive, Inglewood, CA 90301", 70240),
("Lumen Field", "800 Occidental Avenue S, Seattle, WA 98134", 69000);

-- Setup data for Customer Table
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('efoston0', '$2a$04$61jTnSmdSyBnQlFw2e462uqpGY4Gfz2gQX1R6oGPz8GwTEDEOlBca', '83351 Ruskin Court', '1992/02/05', '2023-07-20 14:12:55');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('lwoodland1', '$2a$04$Kf/lI467woyBuB/p7TKRROSA6lao6.yrQ.zQGpyS87nDrvvZXe4Wq', '8 Tennessee Terrace', '1996/12/17', '2024-01-08 17:47:15');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('mvanderbeek2', '$2a$04$ACGut0oatoq7N8htTntTruZfBKKU/KT7.tzisCz0aoj1OvoPMeEmm', '9036 Tennyson Road', '1997/09/22', '2024-03-30 04:05:38');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('rbordis3', '$2a$04$McJJhqJ/HvJBqP2dMyOETOCcs59qRaXHV3IRa7ZXOLEK/0cPzmshu', '218 Westerfield Way', '1988/03/24', '2023-10-23 13:58:30');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('pofarrell4', '$2a$04$BzG1d5uR1jq0oEGk9bbTL.VkXcPZI414/whKu42ZqStzqDk9zIbV2', '653 Nobel Circle', '2001/04/07', '2024-03-11 22:18:54');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('zeverly5', '$2a$04$Lw9I1mjNlWsJKmZVZ8qL0ezcxd2VSCkPQ5ZSlUNQCmxMy7a1fnUiC', '06024 Forest Terrace', '1997/11/10', '2023-07-29 06:08:25');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('cjago6', '$2a$04$Fra.5SB023O./r8.ZO48PO1hQGafkBFSffLNfqREWXuHqxg4n4aFG', '335 Golf Point', '2001/04/12', '2023-06-03 03:30:08');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('cmoncur7', '$2a$04$tpAVvtm2armEZjjDIdRD/.UtN.BWWyuMryQhs5m/8ER1eQntz9ULK', '9 Ronald Regan Road', '1995/06/13', '2023-07-10 17:27:34');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('lscotter8', '$2a$04$ryynHuX6lqDUtNpbybF//.x/KY79qLW/IFdTqSpjReMKpwciS.Ggq', '808 Hagan Alley', '1993/10/02', '2024-01-03 00:48:14');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('eshelp9', '$2a$04$DOubr.z9Hl9qZNyh1ZRqluaRFM6.forg9.YtSjYo89vuckwcJa28q', '5 Gerald Court', '1994/10/06', '2023-06-01 14:16:26');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('ireutera', '$2a$04$tVeNaOVqmZcNAwaAfPTjruPo5lh4wcoQ5mpj2KTZZr/WaoQUReHka', '5309 Heffernan Way', '1999/11/22', '2023-05-21 04:52:11');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('awoollastonb', '$2a$04$/YjuhGwuRX0q0LMwye1CH.L3EdayrFjwLE4h77/DjW38DOgEE9Pzq', '7 Porter Terrace', '1991/11/05', '2023-11-01 16:46:07');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('pmctrustriec', '$2a$04$97v2dfPRIGoaDG9iiVI98uecgMyqwxjR9lG5I382BxJJHHWh4aYxC', '0975 Chive Hill', '1990/07/03', '2023-11-18 04:58:32');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('agrimwaded', '$2a$04$Z75KBLImQjAz2vhamnOjGObDT.CgIDuswXnBBGYK5l/p0DV2Ebq.e', '1 Summit Terrace', '1987/11/11', '2023-07-19 15:09:56');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('cbaldettie', '$2a$04$wMj/ERnr4Nm58iY3x3yxBesyruuKW/zvacfSqttuca.t3VHivAb56', '26 Waubesa Circle', '1995/02/13', '2023-06-18 16:41:15');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('cmustoof', '$2a$04$7ztkFPxVsPRYxlXcb7HJsOHuZgiNpABCFytxjoUnNAsSeo1cHOt7C', '13 Westridge Court', '1991/03/21', '2023-04-21 04:35:32');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('hfriftg', '$2a$04$GrIHnSm4FfBu7bsg2QMFyuC9Wkit2aDcsFqS8KA5u6qDI0I1b6Gci', '92870 Golf View Terrace', '1996/03/14', '2024-03-25 01:13:54');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('etoulsonh', '$2a$04$v9345NfqVTuqo67zv.jI/OnR2bGPrbjXQcoJqHRUd5VUHSWTgxoYm', '0360 Judy Center', '2001/12/23', '2023-12-08 21:55:57');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('nferebeei', '$2a$04$Jnh6pufUOsToVg7TodkR/OST1p5FxLYNY.CYVjrU6Cv/zEdQdSvqm', '950 Warrior Court', '1992/05/20', '2023-09-28 00:26:36');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('cdeasj', '$2a$04$cqscJCoRIfk/WOyfZuPGwu18IKG7kOowhTjhzee/Fg18EnPMt8PH.', '8059 Moland Court', '1989/09/15', '2023-10-22 09:20:50');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('pjarviek', '$2a$04$uzfBgcsDHsneYzwdR9FEhejffqsj9zUsRNR3LGUbM66K2kv6ig3Fy', '935 Waxwing Avenue', '1994/05/21', '2024-02-16 09:24:38');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('rpohlakl', '$2a$04$vg5yPlnLulJKx0zqTXxctuF9UNqvhXNoMc0XzvFMwebSCKwb7m89W', '81301 Toban Street', '1996/04/22', '2023-06-29 16:59:40');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('rhuzzeym', '$2a$04$wdXgxU4mDxzUVjWe9kKtWOiAs4rNxOeDE4/ifrx38bT/BHRrffIWy', '9011 Utah Way', '1987/06/23', '2023-10-04 12:31:43');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('asimoninn', '$2a$04$VGDHGSaIcNWNK4rhupx0DerDLw/UysUZzaYqRaajm2EzhCztIhMRS', '8 Surrey Place', '2002/01/16', '2023-07-02 21:58:02');
insert into Customer (Customer_Username, Customer_Password, Customer_Address, Customer_DOB, Created_At) values ('jborgeo', '$2a$04$LpHPSAQNXgptCgfW5E98HOO777e3fdKiO4qyJDtpGZDv0bHloJ4Fi', '0 Cambridge Place', '1987/06/21', '2023-07-12 17:38:16');

-- Setup data for Artist Table
insert into Artist (AName) values ('Up and Up minoxidil');
insert into Artist (AName) values ('Naproxen');
insert into Artist (AName) values ('ESIKA');
insert into Artist (AName) values ('Extra Strength Night Time Pain Medicine');
insert into Artist (AName) values ('Gemfibrozil');
insert into Artist (AName) values ('Epi-Clenz Plus Instant Hand Antiseptic');
insert into Artist (AName) values ('Bac');
insert into Artist (AName) values ('Metformin Hydrochloride');
insert into Artist (AName) values ('Gehwol med Callus');
insert into Artist (AName) values ('Enoxaparin Sodium');
insert into Artist (AName) values ('Adenosine');
insert into Artist (AName) values ('True Essentials');
insert into Artist (AName) values ('Methocarbamol');
insert into Artist (AName) values ('Cloves');
insert into Artist (AName) values ('Ocean Potion Cool Dry Touch Sport 30 Sunscreen');
insert into Artist (AName) values ('Coconut');
insert into Artist (AName) values ('Ketorolac Tromethamine');
insert into Artist (AName) values ('Risperidone');
insert into Artist (AName) values ('Acetazolamide');
insert into Artist (AName) values ('Alendronate Sodium');
insert into Artist (AName) values ('Night Time Original');
insert into Artist (AName) values ('Guanfacine');
insert into Artist (AName) values ('Phenylephrine Hydrochloride');
insert into Artist (AName) values ('Ibuprofen PM');
insert into Artist (AName) values ('Ariana Grande');
insert into Artist (AName) values ('The Weeknd');
insert into Artist (AName) values ('Bad Bunny');
insert into Artist (AName) values ('Metallica');
insert into Artist (AName) values ('Lauren Hill');
insert into Artist (AName) values ('Kanye West');
insert into Artist (AName) values ('Taylor Swift');

-- Setup data for Occasion Table
INSERT INTO Occasion (Venue_ID, Event_Name, Event_Description, Event_Date_and_Time, Event_Type)
VALUES
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "LeMickey's Greatest Party", "Lebron James' Fortnite Birthday Bash", TIMESTAMP("2023-04-21", "00:30:00"), "Party"),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "P!NK: Summer Carnival 2024", "P!NK's North American Tour", TIMESTAMP("2024-08-18", "18:30:00"), "Concert"),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "Cochella", "Music Festival", TIMESTAMP("2024-04-19", "00:00:00"), "Festival"),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "Scramento Kings Tickets", "Sacramento Kings vs. New Oeleans Pelicans", TIMESTAMP("2023-04-21", "19:00:00"), "Sports/Basketball"),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "iHeartCountry Festival", "Music festival revolving around Country music", TIMESTAMP("2024-05-04", "19:00:00"), "Festival"),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "Minnesota Timberwolves Tickets", "Denver Nuggest vs.Minnesota Timberwolves", TIMESTAMP("2024-04-10", "20:00:00"), "Sports/Basketball"),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "Hamilton (Touring)", "Musical about the life of Alexander Hamiliton", TIMESTAMP("2024-04-19", "20:00:00"), "Art & Theater"),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "Bruno Mars", "N/A", TIMESTAMP("2024-08-15", "20:00:00"), "Concert");
-- ((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "Birthday Party", "Lebron James' Fortnite Birthday Bash", TIMESTAMP("2023-04-21", "00:30:00"), "Party"),
-- ((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), "Birthday Party", "Lebron James' Fortnite Birthday Bash", TIMESTAMP("2023-04-21", "00:30:00"), "Party"),

-- Setup data for Attends Table
INSERT INTO Attends (Venue_ID, Event_ID, Customer_ID)
VALUES
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1));

-- Setup data for Performed Table
INSERT INTO Performed (Venue_ID, Event_ID, Artist_Name)
VALUES
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1)),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), (SELECT AName FROM Artist ORDER BY RAND() LIMIT 1));

-- Setup data for Follows table
INSERT INTO Follows (Artist_Name, Customer_ID)
VALUES
-- ((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1)),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), (SELECT ID FROM Customer ORDER BY RAND() LIMIT 1));

-- Setup data for Venue_PhoneNumber table
INSERT INTO Venue_PhoneNumber (Venue_ID, Phone_Number)
VALUES
(1, '(264)-948-8406'),
(2, '(463)-377-6885'),
(3, '(155)-919-5472'),
(4, '(406)-350-4686'),
(5, '(530)-400-7816'),
(6, '(422)-427-8545'),
(7, '(690)-386-1661'),
(8, '(391)-637-3026'),
(9, '(834)-926-9952'),
(10, '(399)-238-9602'),
(11, '(903)-884-7603'),
(12, '(325)-423-0362');

-- Setup data for Event_Image table
INSERT INTO Event_Image (Venue_ID, Event_ID, E_Image)
VALUES
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'https://camera.sample.edu/mailbox/honey?house=wave#cows'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'https://sample.org/?bike=fly'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'https://www.sample.info/head#baseball'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'https://sample.net/?argument=iron&shirt=toe'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'http://www.roof.sample.com/'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'http://www.sample.org/?cushion=cake&soap=basketball'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'http://www.afterthought.sample.com/food/plough.aspx'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'http://sample.edu/door.html'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'https://sample.org/dime#bee'),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 'http://www.sample.edu/?verse=brother&vacation=clam');

-- Setup data for Event_Price table
INSERT INTO Event_Price (Venue_ID, Event_ID, Price)
VALUES
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 232.59),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 101.50),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 152.41),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 78.16),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 58.35),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 129.35),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 177.02),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 190.02),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 74.75),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 241.60),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 119.83),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 154.91),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 229.47),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 99.11),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 240.30),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 220.45),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 242.21),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 69.29),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 222.09),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 58.96),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 62.34),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 176.78),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 198.09),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 140.89),
((SELECT ID FROM Venue ORDER BY RAND() LIMIT 1), (SELECT ID FROM Occasion ORDER BY RAND() LIMIT 1), 63.74);

-- Setup data for Artist_Genre table
INSERT INTO Artist_Genre (Artist_Name, Genre)
VALUES
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Retro Metal'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'German Cloud Rap'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Hampton Roads Indie'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Tanzian Traditional'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Israeli Folk'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'EDM'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Hip Hop'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Easy Listening'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Pop'),
((SELECT AName FROM Artist ORDER BY RAND() LIMIT 1), 'Djemmbe');


-- Setup data for Customer_PhoneNumber Table
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (1, '(287)-355-5295');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (2, '(156)-925-1056');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (3, '(261)-723-7071');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (4, '(671)-172-4484');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (5, '(324)-561-3928');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (6, '(876)-213-4501');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (7, '(528)-202-1126');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (8, '(982)-563-8108');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (9, '(803)-310-2036');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (10, '(244)-992-4901');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (11, '(106)-828-3959');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (12, '(703)-585-5319');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (13, '(111)-266-9744');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (14, '(571)-981-2177');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (15, '(202)-335-1312');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (16, '(589)-222-0351');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (17, '(358)-596-6462');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (18, '(443)-808-8631');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (19, '(711)-706-0220');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (20, '(540)-860-2298');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (21, '(810)-468-1592');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (22, '(819)-998-7033');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (23, '(556)-640-7468');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (24, '(200)-313-2632');
insert into Customer_PhoneNumber (Customer_ID, Phone_Number) values (25, '(987)-147-7948');

-- Turn foreign key constraints back on when finished
SET foreign_key_checks = 1;


