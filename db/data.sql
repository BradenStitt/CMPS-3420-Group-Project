-- Need to temporarily disable foreign keys while creating tables with circular dependencies.
SET foreign_key_checks = 0;

-- Setup Data for Venue Table
INSERT INTO Venue (Venue_Name, Venue_Address, Capacity) VALUES 
('Crypto.com Arena', '1111 S Figueroa Street, Los Angeles, CA 90015', 20000),
('Hollywood Bowl', '2301 Highland Avenue, Los Angeles, CA 90068', 17500),
('The Kia Forum', '3900 W Manchester Boulevard, Inglewood, CA 90305', 17505),
('Madison Square Garden', '4 Pennsylvania Plaza, New York, NY 10001', 19500),
('Sphere', '255 Sands Avenue, Las Vegas, NV 89169', 18600),
('AT&T Stadium', '1 AT&T Way, Arlington, TX 76011', 94000),
('Barclays Center', '620 Atlantic Avenue, Brooklyn, NY 11217', 19000),
('MetLife Stadium', '1 MetLife Stadium Drive, East Rutherford, NJ 07073', 90000),
('Red Rocks Amphitheater', '18300 W Alameda Parkway, Morrison, CO 80465', 9545),
('Ryman Auditorium', '116 5th Avenue N, Nashville, TN 37219', 2300),
('SoFi Stadium', '1001 S Stadium Drive, Inglewood, CA 90301', 70240),
('Lumen Field', '800 Occidental Avenue S, Seattle, WA 98134', 69000),
('Oracle Park', '24 Willie Mays Plaza, San Francisco, CA 94107', 41000),
('Wrigley Field', '1060 W Addison Street, Chicago, IL 60613', 41649),
('The O2 Arena', 'Peninsula Square, London SE10 0DX, United Kingdom', 20000),
('Allianz Arena', 'Werner-Heisenberg-Allee 25, 80939 München, Germany', 75000),
('Tokyo Dome', '1 Chome-3-61 Koraku, Bunkyo City, Tokyo 112-0004, Japan', 55000),
('Melbourne Cricket Ground', 'Brunton Avenue, Richmond VIC 3002, Australia', 100024),
('Maracanã Stadium', 'R. Prof. Eurico Rabelo - Maracanã, Rio de Janeiro - RJ, 20271-150, Brazil', 78838),
('Stade de France', '93200 Saint-Denis, France', 81338);

-- Setup data for Customer Table
INSERT INTO Customer (Customer_Username, Customer_Password, Customer_Address, Created_At) VALUES
('efoston0', 'tB0`@Ux<RgpSz<x', '83351 Ruskin Court', '2023-07-20 14:12:55'),
('lwoodland1', 'yE1@>o4''_py7tu<', '8 Tennessee Terrace', '2024-01-08 17:47:15'),
('mvanderbeek2', 'dS9''l8|NI~FjuCe', '9036 Tennyson Road', '2024-03-30 04:05:38'),
('rbordis3', 'xZ8$~AB>4o', '218 Westerfield Way', '2023-10-23 13:58:30'),
('pofarrell4', 'qR0=l?J<PP', '653 Nobel Circle', '2024-03-11 22:18:54'),
('zeverly5', 'kB5$M4HKm11v', '06024 Forest Terrace', '2023-07-29 06:08:25'),
('cjago6', 'vP9<F=YPuqoU', '335 Golf Point', '2023-06-03 03:30:08'),
('cmoncur7', 'eS0&*Gu4KQP&1\%d', '9 Ronald Regan Road', '2023-07-10 17:27:34'),
('lscotter8', 'dE0<GIQht', '808 Hagan Alley', '2024-01-03 00:48:14'),
('eshelp9', 'tC7!U.sjG%V$', '5 Gerald Court', '2023-06-01 14:16:26'),
('ireutera', 'xG0\jDZdX1c>,m', '5309 Heffernan Way', '2023-05-21 04:52:11'),
('awoollastonb', 'vI6%A38S)ow~98m', '7 Porter Terrace', '2023-11-01 16:46:07'),
('pmctrustriec', 'uO6/qMK>sQz''o{b', '0975 Chive Hill', '2023-11-18 04:58:32'),
('agrimwaded', 'oF8=R`?YJiD', '1 Summit Terrace', '2023-07-19 15:09:56'),
('cbaldettie', 'cC5)bM9</k$LE', '26 Waubesa Circle', '2023-06-18 16:41:15'),
('cmustoof', 'zT1*g_hO?fqn,,"', '13 Westridge Court', '2023-04-21 04:35:32'),
('hfriftg', 'iY0\H&X|c_@n0', '92870 Golf View Terrace', '2024-03-25 01:13:54'),
('etoulsonh', 'fY6_QXs{dX~WbE', '0360 Judy Center', '2023-12-08 21:55:57'),
('nferebeei', 'xQ8{pp2>@', '950 Warrior Court', '2023-09-28 00:26:36'),
('cdeasj', 'fS2=m8PC', '8059 Moland Court', '2023-10-22 09:20:50'),
('pjarviek', 'kP6?"eJ"', '935 Waxwing Avenue', '2024-02-16 09:24:38'),
('rpohlakl', 'zY2_3Kt&T)~q}T', '81301 Toban Street', '2023-06-29 16:59:40'),
('rhuzzeym', 'gT3{,QYfbJdS', '9011 Utah Way', '2023-10-04 12:31:43'),
('asimoninn', 'oF8=R`?YJiD', '8 Surrey Place', '2023-07-02 21:58:02'),
('jborgeo', 'mN7%z}>>xa}', '0 Cambridge Place', '2023-07-12 17:38:16');

-- Setup data for Artist Table
INSERT INTO Artist (AName) VALUES
('Michael Jackson'),
('Madonna'),
('Elton John'),
('Whitney Houston'),
('Prince'),
('David Bowie'),
('Bob Marley'),
('Stevie Wonder'),
('Janet Jackson'),
('Tina Turner'),
('Paul McCartney'),
('Aretha Franklin'),
('Eric Clapton'),
('Diana Ross'),
('Beyoncé'),
('Bruce Springsteen'),
('John Lennon'),
('Barbra Streisand'),
('Bob Dylan'),
('Mariah Carey');

-- Setup data for Occasion Table
INSERT INTO Occasion (Venue_ID, Event_Name, Event_Description, Event_Date_and_Time, Event_Type) VALUES
(1, 'Concert Series', 'A series of live music performances featuring various artists.', '2023-01-08 19:00:00', 'Concert'),
(2, 'Summer Movie Nights', 'Enjoy classic movies under the stars with friends and family.', '2024-01-17 20:30:00', 'Movie Night'),
(3, 'Sports Expo', 'An expo showcasing the latest in sports equipment and technology.', '2021-03-29 09:00:00', 'Expo'),
(4, 'Basketball Tournament', 'Competitive basketball tournament featuring local teams.', '2023-12-28 14:00:00', 'Sports'),
(5, 'Electronic Dance Party', 'A high-energy dance party with top DJs and electronic music.', '2021-05-08 22:00:00', 'Music'),
(6, 'Football Championship', 'The final game of the season to determine the football champion.', '2024-09-10 18:30:00', 'Sports'),
(7, 'Tech Conference', 'A conference focused on the latest trends and innovations in technology.', '2024-07-21 10:00:00', 'Conference'),
(8, 'Comedy Show', 'An evening of laughter with stand-up comedians from around the country.', '2023-09-24 19:30:00', 'Comedy'),
(9, 'Art Exhibition', 'A showcase of local artists\' work in various mediums.', '2020-01-13 11:00:00', 'Exhibition'),
(10, 'Festival of Lights', 'A celebration of cultural diversity with music, dance, and food.', '2023-11-05 17:00:00', 'Festival'),
(11, 'Soccer Match', 'Exciting soccer match between rival teams for the championship title.', '2024-04-03 15:45:00', 'Sports'),
(12, 'Fashion Show', 'A showcase of the latest fashion trends and designer collections.', '2024-10-12 20:00:00', 'Fashion'),
(13, 'Gaming Expo', 'An expo featuring the newest video games and gaming technology.', '2021-03-26 12:00:00', 'Expo'),
(14, 'Rock Concert', 'An electrifying concert featuring rock bands from across the globe.', '2021-09-25 21:00:00', 'Concert'),
(15, 'Charity Gala', 'A fundraising gala to support local charities and community initiatives.', '2020-01-06 18:30:00', 'Charity'),
(16, 'Car Show', 'A showcase of vintage and modern cars with live demonstrations.', '2024-10-09 10:00:00', 'Exhibition'),
(17, 'Food Festival', 'A culinary extravaganza with food vendors showcasing diverse cuisines.', '2024-01-03 12:00:00', 'Festival'),
(18, 'Science Fair', 'A showcase of student projects and scientific discoveries.', '2020-10-03 09:00:00', 'Fair'),
(19, 'Ballet Performance', 'A captivating ballet performance by renowned dancers.', '2021-09-04 19:30:00', 'Performance'),
(20, 'Wine Tasting', 'An evening of wine tasting with sommeliers guiding the experience.', '2021-02-25 18:00:00', 'Tasting'),
(1, 'Hip-Hop Showcase', 'An evening of hip-hop performances by emerging and established artists.', '2020-09-26 20:00:00', 'Music'),
(2, 'Outdoor Yoga Session', 'Relaxing yoga session in the serene outdoor setting of the venue.', '2024-07-07 09:30:00', 'Fitness'),
(3, 'Business Summit', 'A summit bringing together industry leaders for strategic discussions.', '2021-03-31 10:00:00', 'Summit'),
(4, 'Baseball Game', 'Exciting baseball game between rival teams at the championship series.', '2022-08-04 17:00:00', 'Sports'),
(5, 'Techno Rave', 'An immersive techno music experience with top DJs and visual effects.', '2024-04-03 23:00:00', 'Music'),
(6, 'Rugby Tournament', 'Intense rugby tournament featuring regional teams competing for the cup.', '2023-08-05 13:45:00', 'Sports'),
(7, 'Marketing Conference', 'A conference focused on the latest trends and strategies in marketing.', '2020-04-01 11:00:00', 'Conference'),
(8, 'Stand-Up Comedy Night', 'An evening of hilarious stand-up comedy performances.', '2020-05-15 20:00:00', 'Comedy'),
(9, 'Art Auction', 'An auction featuring rare and valuable artworks from renowned artists.', '2021-02-09 18:00:00', 'Auction'),
(10, 'Cultural Fair', 'A celebration of diverse cultures with music, dance, and traditional cuisine.', '2024-06-08 16:00:00', 'Fair'),
(11, 'Tennis Open', 'Thrilling tennis matches featuring top-ranked players vying for the championship.', '2023-12-26 12:30:00', 'Sports'),
(12, 'Runway Show', 'A high-fashion runway show featuring leading designers\' collections.', '2021-08-29 19:00:00', 'Fashion'),
(13, 'Gaming Tournament', 'Competitive gaming tournament with cash prizes and professional players.', '2021-04-17 14:00:00', 'Gaming'),
(14, 'Pop Concert', 'An energetic pop music concert with chart-topping artists and live performances.', '2021-06-27 18:30:00', 'Concert'),
(15, 'Fundraising Dinner', 'An elegant dinner event to raise funds for charitable causes.', '2023-07-25 19:00:00', 'Charity'),
(16, 'Classic Car Show', 'A showcase of classic cars from different eras with historical insights.', '2023-06-08 10:00:00', 'Exhibition'),
(17, 'Beer Festival', 'A festival celebrating craft beers with tastings and brewery showcases.', '2022-08-22 12:00:00', 'Festival'),
(18, 'Science Exhibition', 'An interactive science exhibition showcasing discoveries and innovations.', '2020-07-03 09:00:00', 'Exhibition'),
(19, 'Dance Performance', 'An enchanting dance performance by a renowned dance company.', '2024-07-07 19:30:00', 'Performance'),
(20, 'Whiskey Tasting', 'An exclusive whiskey tasting event with rare and premium selections.', '2021-03-31 18:30:00', 'Tasting'),
(1, 'Country Music Festival', 'A celebration of country music with live performances by top artists.', '2022-08-04 17:00:00', 'Music'),
(2, 'Sunrise Yoga Retreat', 'An invigorating yoga retreat at sunrise for wellness and relaxation.', '2024-04-03 06:00:00', 'Fitness'),
(3, 'Leadership Summit', 'A summit for leadership development and strategic insights.', '2023-08-05 10:00:00', 'Summit'),
(4, 'Softball Tournament', 'Exciting softball tournament with teams competing for the championship.', '2024-06-08 14:30:00', 'Sports'),
(5, 'Electronic Music Festival', 'A massive electronic music festival with top DJs and immersive experiences.', '2023-12-26 21:00:00', 'Music'),
(6, 'Hockey Championship', 'The championship game of the hockey season with intense action on the ice.', '2021-11-25 19:15:00', 'Sports'),
(7, 'Digital Marketing Conference', 'A conference focused on digital marketing strategies and innovations.', '2022-04-26 11:30:00', 'Conference'),
(8, 'Magic Comedy Show', 'An entertaining comedy show combining magic tricks and humor.', '2020-12-04 19:00:00', 'Comedy'),
(9, 'Modern Art Fair', 'A fair showcasing modern and contemporary artworks from emerging artists.', '2022-08-22 11:30:00', 'Fair'),
(10, 'International Street Food Festival', 'A festival celebrating diverse street food flavors from around the world.', '2020-07-03 16:00:00', 'Festival'),
(11, 'Tennis Masters Tournament', 'Premier tennis tournament featuring top-ranked players competing for the trophy.', '2024-06-08 12:00:00', 'Sports'),
(12, 'High-Fashion Runway Show', 'A runway show featuring high-fashion designers\' collections and couture.', '2023-12-26 19:30:00', 'Fashion'),
(13, 'Esports Championship Series', 'The ultimate esports championship series with multiple gaming tournaments.', '2021-08-29 14:00:00', 'Esports'),
(14, 'Indie Music Festival', 'A music festival showcasing indie bands and emerging music talent.', '2021-04-17 17:00:00', 'Music'),
(15, 'Community Charity Dinner', 'A community dinner event to raise funds for local charities and causes.', '2023-07-25 18:30:00', 'Charity'),
(16, 'Automotive Showcase', 'A comprehensive automotive showcase featuring cars, trucks, and motorcycles.', '2024-06-08 09:00:00', 'Exhibition'),
(17, 'Wine and Cheese Tasting Event', 'An elegant tasting event pairing wines and cheeses from around the world.', '2023-12-26 14:00:00', 'Tasting'),
(18, 'Space Science Symposium', 'A symposium exploring the latest advancements in space science and research.', '2021-06-27 10:00:00', 'Symposium'),
(19, 'Ballet Gala Performance', 'A grand gala performance showcasing ballet excellence and artistry.', '2023-11-01 19:30:00', 'Performance'),
(20, 'Craft Beer Festival', 'A festival celebrating craft beers from local breweries with live music and food.', '2023-08-04 17:00:00', 'Festival');

-- Setup data for Attends Table
INSERT INTO Attends (Venue_ID, Event_ID, Customer_ID)
SELECT Venue_ID, Occasion.ID, Customer.ID 
FROM Customer JOIN Occasion ORDER BY RAND() LIMIT 1500;

-- Setup data for Performed Table
INSERT INTO Performed (Venue_ID, Event_ID, Artist_Name)
SELECT Venue_ID, Occasion.ID, AName
FROM Artist JOIN Occasion ORDER BY RAND() LIMIT 800;

-- Setup data for Follows table
INSERT INTO Follows (Artist_Name, Customer_ID)
SELECT AName, Customer.ID 
FROM Artist JOIN Customer ORDER BY RAND() LIMIT 350;

-- Setup data for Venue_PhoneNumber table
INSERT INTO Venue_PhoneNumber (Venue_ID, Phone_Number) VALUES
(1, '123-456-7890'),
(2, '234-567-8901'),
(3, '345-678-9012'),
(4, '456-789-0123'),
(5, '567-890-1234'),
(6, '678-901-2345'),
(7, '789-012-3456'),
(8, '890-123-4567'),
(9, '901-234-5678'),
(10, '012-345-6789'),
(11, '321-654-9870'),
(12, '432-765-0981'),
(13, '543-876-1092'),
(14, '654-987-2103'),
(15, '765-098-3214'),
(16, '876-109-4321'),
(17, '987-210-5432'),
(18, '098-321-6543'),
(19, '109-432-7654'),
(20, '210-543-8765');

-- Setup data for Event_Image table
INSERT INTO Event_Image (Venue_ID, Event_ID, E_Image) VALUES
(1, 1, 'http://dummyimage.com/237x100.png/ff4444/ffffff'),
(2, 2, 'http://dummyimage.com/158x100.png/5fa2dd/ffffff'),
(3, 3, 'http://dummyimage.com/163x100.png/cc0000/ffffff'),
(4, 4, 'http://dummyimage.com/215x100.png/ff4444/ffffff'),
(5, 5, 'http://dummyimage.com/108x100.png/ff4444/ffffff'),
(6, 6, 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(7, 7, 'http://dummyimage.com/167x100.png/dddddd/000000'),
(8, 8, 'http://dummyimage.com/135x100.png/5fa2dd/ffffff'),
(9, 9, 'http://dummyimage.com/160x100.png/cc0000/ffffff'),
(10, 10, 'http://dummyimage.com/120x100.png/ff4444/ffffff'),
(11, 11, 'http://dummyimage.com/193x100.png/cc0000/ffffff'),
(12, 12, 'http://dummyimage.com/183x100.png/ff4444/ffffff'),
(13, 13, 'http://dummyimage.com/206x100.png/cc0000/ffffff'),
(14, 14, 'http://dummyimage.com/191x100.png/5fa2dd/ffffff'),
(15, 15, 'http://dummyimage.com/125x100.png/cc0000/ffffff'),
(16, 16, 'http://dummyimage.com/197x100.png/5fa2dd/ffffff'),
(17, 17, 'http://dummyimage.com/196x100.png/dddddd/000000'),
(18, 18, 'http://dummyimage.com/189x100.png/cc0000/ffffff'),
(19, 19, 'http://dummyimage.com/143x100.png/ff4444/ffffff'),
(20, 20, 'http://dummyimage.com/144x100.png/dddddd/000000'),
(1, 21, 'http://dummyimage.com/250x100.png/cc0000/ffffff'),
(2, 22, 'http://dummyimage.com/247x100.png/dddddd/000000'),
(3, 23, 'http://dummyimage.com/127x100.png/ff4444/ffffff'),
(4, 24, 'http://dummyimage.com/141x100.png/ff4444/ffffff'),
(5, 25, 'http://dummyimage.com/108x100.png/dddddd/000000'),
(6, 26, 'http://dummyimage.com/184x100.png/cc0000/ffffff'),
(7, 27, 'http://dummyimage.com/169x100.png/ff4444/ffffff'),
(8, 28, 'http://dummyimage.com/232x100.png/ff4444/ffffff'),
(9, 29, 'http://dummyimage.com/164x100.png/cc0000/ffffff'),
(10, 30, 'http://dummyimage.com/180x100.png/cc0000/ffffff'),
(11, 31, 'http://dummyimage.com/182x100.png/5fa2dd/ffffff'),
(12, 32, 'http://dummyimage.com/220x100.png/5fa2dd/ffffff'),
(13, 33, 'http://dummyimage.com/217x100.png/5fa2dd/ffffff'),
(14, 34, 'http://dummyimage.com/168x100.png/cc0000/ffffff'),
(15, 35, 'http://dummyimage.com/249x100.png/dddddd/000000'),
(16, 36, 'http://dummyimage.com/231x100.png/5fa2dd/ffffff'),
(17, 37, 'http://dummyimage.com/153x100.png/cc0000/ffffff'),
(18, 38, 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(19, 39, 'http://dummyimage.com/106x100.png/5fa2dd/ffffff'),
(20, 40, 'http://dummyimage.com/248x100.png/cc0000/ffffff'),
(1, 41, 'http://dummyimage.com/184x100.png/5fa2dd/ffffff'),
(2, 42, 'http://dummyimage.com/171x100.png/5fa2dd/ffffff'),
(3, 43, 'http://dummyimage.com/168x100.png/dddddd/000000'),
(4, 44, 'http://dummyimage.com/157x100.png/ff4444/ffffff'),
(5, 45, 'http://dummyimage.com/162x100.png/cc0000/ffffff'),
(6, 46, 'http://dummyimage.com/114x100.png/dddddd/000000'),
(7, 47, 'http://dummyimage.com/239x100.png/ff4444/ffffff'),
(8, 48, 'http://dummyimage.com/107x100.png/5fa2dd/ffffff'),
(9, 49, 'http://dummyimage.com/150x100.png/ff4444/ffffff'),
(10, 50, 'http://dummyimage.com/126x100.png/5fa2dd/ffffff'),
(11, 51, 'http://dummyimage.com/245x100.png/ff4444/ffffff'),
(12, 52, 'http://dummyimage.com/186x100.png/ff4444/ffffff'),
(13, 53, 'http://dummyimage.com/211x100.png/dddddd/000000'),
(14, 54, 'http://dummyimage.com/223x100.png/cc0000/ffffff'),
(15, 55, 'http://dummyimage.com/190x100.png/5fa2dd/ffffff'),
(16, 56, 'http://dummyimage.com/127x100.png/ff4444/ffffff'),
(17, 57, 'http://dummyimage.com/233x100.png/5fa2dd/ffffff'),
(18, 58, 'http://dummyimage.com/113x100.png/dddddd/000000'),
(19, 59, 'http://dummyimage.com/209x100.png/5fa2dd/ffffff'),
(20, 60, 'http://dummyimage.com/140x100.png/dddddd/000000');

-- Setup data for Event_Price table
INSERT INTO Event_Price (Venue_ID, Event_ID, Price) VALUES
(1, 1, 125.00),
(2, 2, 100.00),
(3, 3, 150.00),
(4, 4, 90.00),
(5, 5, 200.00),
(6, 6, 180.00),
(7, 7, 250.00),
(8, 8, 80.00),
(9, 9, 75.00),
(10, 10, 300.00),
(11, 11, 110.00),
(12, 12, 135.00),
(13, 13, 70.00),
(14, 14, 220.00),
(15, 15, 275.00),
(16, 16, 65.00),
(17, 17, 150.00),
(18, 18, 55.00),
(19, 19, 210.00),
(20, 20, 95.00),
(1, 21, 180.00),
(2, 22, 90.00),
(3, 23, 210.00),
(4, 24, 120.00),
(5, 25, 220.00),
(6, 26, 160.00),
(7, 27, 100.00),
(8, 28, 110.00),
(9, 29, 85.00),
(10, 30, 260.00),
(11, 31, 80.00),
(12, 32, 150.00),
(13, 33, 75.00),
(14, 34, 240.00),
(15, 35, 290.00),
(16, 36, 60.00),
(17, 37, 140.00),
(18, 38, 50.00),
(19, 39, 200.00),
(20, 40, 105.00),
(1, 41, 120.00),
(2, 42, 100.00),
(3, 43, 170.00),
(4, 44, 95.00),
(5, 45, 180.00),
(6, 46, 150.00),
(7, 47, 260.00),
(8, 48, 85.00),
(9, 49, 80.00),
(10, 50, 300.00),
(11, 51, 100.00),
(12, 52, 145.00),
(13, 53, 75.00),
(14, 54, 230.00),
(15, 55, 280.00),
(16, 56, 70.00),
(17, 57, 160.00),
(18, 58, 50.00),
(19, 59, 190.00),
(20, 60, 110.00);

-- Setup data for Artist_Genre table
INSERT INTO Artist_Genre (Artist_Name, Genre) VALUES
('Michael Jackson', 'Pop'),
('Michael Jackson', 'R&B'),
('Michael Jackson', 'Funk'),
('Madonna', 'Pop'),
('Madonna', 'Dance'),
('Madonna', 'Electronic'),
('Elton John', 'Pop'),
('Elton John', 'Rock'),
('Elton John', 'Piano Rock'),
('Whitney Houston', 'R&B'),
('Whitney Houston', 'Soul'),
('Whitney Houston', 'Pop'),
('Prince', 'Funk'),
('Prince', 'Pop'),
('Prince', 'Rock'),
('David Bowie', 'Rock'),
('David Bowie', 'Pop'),
('David Bowie', 'Glam Rock'),
('Bob Marley', 'Reggae'),
('Bob Marley', 'Ska'),
('Bob Marley', 'Rocksteady'),
('Stevie Wonder', 'Soul'),
('Stevie Wonder', 'Pop'),
('Stevie Wonder', 'Funk'),
('Janet Jackson', 'Pop'),
('Janet Jackson', 'R&B'),
('Janet Jackson', 'Dance'),
('Tina Turner', 'Pop'),
('Tina Turner', 'Rock'),
('Tina Turner', 'R&B'),
('Paul McCartney', 'Rock'),
('Paul McCartney', 'Pop'),
('Paul McCartney', 'Soft Rock'),
('Aretha Franklin', 'R&B'),
('Aretha Franklin', 'Soul'),
('Aretha Franklin', 'Gospel'),
('Eric Clapton', 'Rock'),
('Eric Clapton', 'Blues'),
('Eric Clapton', 'Rock and Roll'),
('Diana Ross', 'Pop'),
('Diana Ross', 'Soul'),
('Diana Ross', 'Disco'),
('Beyoncé', 'Pop'),
('Beyoncé', 'R&B'),
('Beyoncé', 'Hip Hop'),
('Bruce Springsteen', 'Rock'),
('Bruce Springsteen', 'Folk Rock'),
('Bruce Springsteen', 'Heartland Rock'),
('John Lennon', 'Rock'),
('John Lennon', 'Pop'),
('John Lennon', 'Folk Rock'),
('Barbra Streisand', 'Pop'),
('Barbra Streisand', 'Vocal Jazz'),
('Barbra Streisand', 'Easy Listening'),
('Bob Dylan', 'Folk'),
('Bob Dylan', 'Rock'),
('Bob Dylan', 'Blues'),
('Mariah Carey', 'Pop'),
('Mariah Carey', 'R&B'),
('Mariah Carey', 'Soul');

-- Setup data for Customer_PhoneNumber Table
INSERT INTO Customer_PhoneNumber (Customer_ID, Phone_Number) VALUES
(1, '287-355-5295'),
(2, '156-925-1056'),
(3, '261-723-7071'),
(4, '671-172-4484'),
(5, '324-561-3928'),
(6, '876-213-4501'),
(7, '528-202-1126'),
(8, '982-563-8108'),
(9, '803-310-2036'),
(10, '244-992-4901'),
(11, '106-828-3959'),
(12, '703-585-5319'),
(13, '111-266-9744'),
(14, '571-981-2177'),
(15, '202-335-1312'),
(16, '589-222-0351'),
(17, '358-596-6462'),
(18, '443-808-8631'),
(19, '711-706-0220'),
(20, '540-860-2298'),
(21, '810-468-1592'),
(22, '819-998-7033'),
(23, '556-640-7468'),
(24, '200-313-2632'),
(25, '987-147-7948');


-- Turn foreign key constraints back on when finished
SET foreign_key_checks = 1;