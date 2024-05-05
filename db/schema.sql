-- Temporarily disable foreign keys while creating tables with circualar dependencies

SET foreign_key_checks = 0;

-- Drop all tables

DROP TABLE IF EXISTS Venue;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS Occasion;
DROP TABLE IF EXISTS Attends;
DROP TABLE IF EXISTS Performed;
DROP TABLE IF EXISTS Follows;
DROP TABLE IF EXISTS Venue_PhoneNumber;
DROP TABLE IF EXISTS Event_Image;
DROP TABLE IF EXISTS Event_Price;
DROP TABLE IF EXISTS Artist_Genre;
DROP TABLE IF EXISTS Customer_PhoneNumber;
DROP TABLE IF EXISTS Customer_History;
DROP VIEW IF EXISTS UpcomingEvents;
DROP VIEW IF EXISTS PopularArtists;
DROP VIEW IF EXISTS PopularEvents;
DROP PROCEDURE IF EXISTS CreateUserAccount;
DROP PROCEDURE IF EXISTS DeleteUserAccount;
DROP PROCEDURE IF EXISTS UpdateUserInfo;
DROP PROCEDURE IF EXISTS ArtistPerformance;

-- Create new sets of tables

CREATE TABLE Venue (
    ID int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Venue_Name varchar(50),
    Venue_Address varchar(255),
    Capacity int unsigned
);

CREATE TABLE Customer (
    ID int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Customer_Username varchar(50) NOT NULL,
    Customer_Password varchar(255) NOT NULL,
    Customer_PasswordHash varchar(128),
    Customer_Address varchar(255) DEFAULT NULL,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- e.g. 2021-04-20 12:00:00
);

CREATE TABLE Artist (
    AName varchar(50) NOT NULL PRIMARY KEY
);

-- Jose:    'Event' already exists in SQL, so I changed the name to 'Occasion'
CREATE TABLE Occasion (
    ID int unsigned NOT NULL AUTO_INCREMENT,
    Venue_ID int unsigned NOT NULL,
    Event_Name varchar(50),
    Event_Description TEXT, -- text field can store up to 65,535 characters
    -- Jose:    If we want to add a constraint to make sure the user is 18+,
    --          We can add that on the server side or by adding 'CHECK' here
    Event_Date_and_Time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Event_Type varchar(50),
    PRIMARY KEY (ID, Venue_ID),
    FOREIGN KEY (Venue_ID) REFERENCES Venue(ID) 
);

CREATE TABLE Attends (
    Venue_ID int unsigned NOT NULL,
    Event_ID int unsigned NOT NULL,
    Customer_ID int unsigned NOT NULL,
    PRIMARY KEY (Venue_ID, Event_ID, Customer_ID),
    FOREIGN KEY (Event_ID, Venue_ID) REFERENCES Occasion(ID, Venue_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

CREATE TABLE Performed (
    Venue_ID int unsigned NOT NULL,
    Event_ID int unsigned NOT NULL,
    Artist_Name varchar(50) NOT NULL,
    PRIMARY KEY (Venue_ID, Event_ID, Artist_Name),
    FOREIGN KEY (Event_ID, Venue_ID) REFERENCES Occasion(ID, Venue_ID),
    FOREIGN KEY (Artist_Name) REFERENCES Artist(AName)
);

CREATE TABLE Follows (
    Artist_Name varchar(50) NOT NULL,
    Customer_ID int unsigned NOT NULL,
    PRIMARY KEY (Artist_Name, Customer_ID),
    FOREIGN KEY (Artist_Name) REFERENCES Artist(AName),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

CREATE TABLE Venue_PhoneNumber (
    Venue_ID int unsigned NOT NULL,
    Phone_Number varchar(25),
    PRIMARY KEY (Venue_ID, Phone_Number),
    FOREIGN KEY (Venue_ID) REFERENCES Venue(ID)
);

CREATE TABLE Event_Image (
    Venue_ID int unsigned NOT NULL,
    Event_ID int unsigned NOT NULL,
    -- Jose:    I think this should store a link to an image
    --          You CAN store images as raw data, but a link might be easier
    E_Image varchar(128),
    PRIMARY KEY (Venue_ID, Event_ID, E_Image),
    FOREIGN KEY (Event_ID, Venue_ID) REFERENCES Occasion(ID, Venue_ID)
);

CREATE TABLE Event_Price (
    Venue_ID int unsigned NOT NULL,
    Event_ID int unsigned NOT NULL,
    Price DECIMAL(10, 2) DEFAULT 0.00,
    PRIMARY KEY (Venue_ID, Event_ID, Price),
    FOREIGN KEY (Event_ID, Venue_ID) REFERENCES Occasion(ID, Venue_ID)
);

CREATE TABLE Artist_Genre (
    Artist_Name varchar(50) NOT NULL,
    Genre varchar(25),
    PRIMARY KEY (Artist_Name, Genre),
    FOREIGN KEY (Artist_Name) REFERENCES Artist(AName)
);

CREATE TABLE Customer_PhoneNumber (
    Customer_ID int unsigned AUTO_INCREMENT NOT NULL,
    Phone_Number varchar(25),
    PRIMARY KEY (Customer_ID, Phone_Number),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

CREATE TABLE Customer_History LIKE Customer;

-- Enables foreign keys again
SET foreign_key_checks = 1;


-- VIEWS

-- View 1: 
CREATE VIEW UpcomingEvents AS
SELECT Venue_Name, Venue_Address, Event_Name, Event_Description, Price, Event_Date_and_Time
FROM Venue V
JOIN Occasion O ON V.ID = O.Venue_ID 
JOIN Event_Price EP ON O.ID = EP.Event_ID
WHERE O.Event_Date_and_Time > CURRENT_TIMESTAMP()
ORDER BY O.Event_Date_and_Time;


-- View 2:
CREATE VIEW PopularArtists AS 
SELECT Artist_Name as Artist, COUNT(Customer_ID) as Followers 
FROM Follows GROUP BY Artist ORDER BY Followers DESC;


-- View 3:
CREATE VIEW PopularEvents AS 
SELECT Event_Name, COUNT(Customer_ID) AS Attendees
FROM Attends A 
JOIN Occasion O ON A.Event_ID = O.ID
GROUP BY Event_Name ORDER BY Attendees DESC;


-- STORED PROCEDURES 

-- Procedure 1: 

DELIMITER //
CREATE PROCEDURE CreateUserAccount(username varchar(50), password varchar(225), cpassword varchar(225), pwhash varchar (128), pnum varchar(25))
BEGIN
    -- Check if username already exists
    SELECT COUNT(Customer_Username) INTO @count
    FROM Customer
    WHERE Customer_Username = username;

    -- If username already exists, return a message
    if @count > 0 THEN
        SELECT 'Username already exists' AS Message;
    elseif password != cpassword THEN
        SELECT 'Passwords do not match' AS Message;
    else  
        -- Insert new customer account
        INSERT INTO Customer (Customer_Username, Customer_Password, Customer_PasswordHash)
        VALUES (username, password, pwhash);

        INSERT INTO Customer_PhoneNumber (Phone_Number) 
        VALUES (pnum);

        SELECT 'Account created successfully' AS Message;
    end if;
END //
DELIMITER ;


-- Procedure 2:

DELIMITER //
CREATE PROCEDURE DeleteUserAccount(username varchar(50))
BEGIN
    SET @customerID = -1;

    -- Find customer ID based on username and password
    SELECT ID INTO @customerID
    FROM Customer
    WHERE Customer_Username = username;

    -- Check if no ID was found and return a message
    if @customerID < 0 THEN
        SELECT 'Invalid username or password' AS Message;
    else 
        DELETE FROM Customer
        WHERE Customer.ID = @customerID;

        SELECT 'Account deleted successfully' AS Message;
    end if;
END //
DELIMITER ;


-- Procedure 3:

DELIMITER //
CREATE PROCEDURE UpdateUserInfo(username varchar(50), pnum varchar(25), address varchar(255), newpass varchar(225), pwhash varchar (128))
BEGIN
    SET @customerID = -1;

    -- Find customer ID based on username
    SELECT ID INTO @customerID
    FROM Customer 
    WHERE Customer_Username = username;

    -- Check if no ID was found and return a message 
    if @customerID < 0 THEN
        SELECT 'Username does not exist' AS Message;
    else 
        -- Update the customer's provided information
        UPDATE Customer
        SET Customer_Password = newpass,
            Customer_PasswordHash = pwhash,
            Customer_Address = address
            -- Customer_DOB = dob
        WHERE Customer.ID = @customerID;

        UPDATE Customer_PhoneNumber
        SET Phone_Number = pnum
        WHERE Customer_ID = @customerID;

        SELECT 'Provided information updated successfully' AS Message;
    end if;
END //
DELIMITER ;


-- Procedure 4:

DELIMITER // 
CREATE PROCEDURE ArtistPerformance(artist_name varchar(50))
BEGIN
    DECLARE artistExists INT DEFAULT 0;
    DECLARE artistPerforming INT DEFAULT 0;

    SELECT COUNT(*) INTO artistExists FROM Artist WHERE AName = artist_name;

    -- Check if artist name is not found and return a message
    if artistExists = 0 THEN 
        SELECT 'Artist not found' AS Message;
    else
        SELECT COUNT(*) INTO artistPerforming FROM Performed WHERE Artist_Name = artist_name; 

        -- Check if artist is not performing at any events and return a message
        if artistPerforming = 0 THEN 
            SELECT 'Artist is not performing at any events' AS Message;
        else
            -- Get the venue name, address, event name, and date and time where the artist is performing
            SELECT Venue_Name, Venue_Address, Event_Name, Event_Date_and_Time
            FROM Venue V 
            JOIN Occasion O ON V.ID = O.Venue_ID 
            JOIN Performed P ON O.ID = P.Event_ID
            WHERE P.Artist_Name = artist_name;
        end if;
    end if;
END //
DELIMITER ;


-- TRIGGERS

-- Trigger 1: after_customer_delete (Maintain History of Deleted Customers)
-- Purpose: This trigger is designed to maintain a history of deleted customers by capturing their data before deletion into a history table (Customer_History). 
-- This ensures that even after a customer is deleted, their information is preserved for auditing or archival purposes.

DELIMITER //
CREATE TRIGGER after_customer_delete
AFTER DELETE ON Customer
FOR EACH ROW
BEGIN
    INSERT INTO Customer_History VALUES (OLD.ID, OLD.Customer_Username, OLD.Customer_Password, OLD.Customer_Address, OLD.Created_At);
END//
DELIMITER ;


-- Trigger 2: before_occasion_delete (Cascade Delete Event-Related Data)
-- Purpose: This trigger ensures that when an Occasion (event) is deleted, related data in the Attends table (attendance records) associated with that event are also deleted. 
-- This maintains data consistency and prevents orphaned records.

DELIMITER //
CREATE TRIGGER before_occasion_delete
BEFORE DELETE ON Occasion
FOR EACH ROW
BEGIN
    -- Delete associated records from the Attends table
    DELETE FROM Attends
    WHERE Venue_ID = OLD.Venue_ID AND Event_ID = OLD.ID;
END//
DELIMITER ;


-- Trigger 3: before_customer_delete (Cascade Delete Customer-Related Data)
-- Purpose: This trigger handles cascading deletions for a customer. 
-- When a customer is deleted, it deletes associated records from the Customer_PhoneNumber table (phone numbers of the customer) and also removes attendance records (Attends) associated with the customer.

DELIMITER //
CREATE TRIGGER before_customer_delete
BEFORE DELETE ON Customer
FOR EACH ROW
BEGIN
    -- Delete associated records from the Customer_PhoneNumber table
    DELETE FROM Customer_PhoneNumber
    WHERE Customer_ID = OLD.ID;

    -- Delete associated records from the Attends table
    DELETE FROM Attends
    WHERE Customer_ID = OLD.ID;
END//
DELIMITER ;


-- Trigger 4: before_customer_change (Cascade Update on Customer ID Change)
-- Purpose: This trigger handles cascading updates when a customer's ID is changed (either through deletion or update).
-- It updates the corresponding Customer_ID in the Customer_PhoneNumber table to reflect the new ID and ensures that phone number records remain associated with the correct customer.

DELIMITER //
CREATE TRIGGER before_customer_change
BEFORE DELETE OR UPDATE ON Customer
FOR EACH ROW
BEGIN
    -- Cascade delete on Customer delete
    DELETE FROM Customer_PhoneNumber
    WHERE Customer_ID = OLD.ID
    ON DELETE CASCADE;

    -- Cascade update on Customer update
    UPDATE Customer_PhoneNumber
    SET Customer_ID = NEW.ID
    WHERE Customer_ID = OLD.ID
    ON UPDATE CASCADE;
END//
DELIMITER ;