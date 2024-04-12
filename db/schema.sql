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

-- Create new sets of tables

-- Venue(VID, VAddress, VName, Capacity)
CREATE TABLE Venue (
    ID int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Venue_Name varchar(50),
    Venue_Address varchar(255),
    Capacity int unsigned
);

-- Customer(CID, Username, Address, Date of Birth, Created at, Password)
CREATE TABLE Customer (
    ID int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Customer_Username varchar(50) NOT NULL,
    Customer_Password varchar(255) NOT NULL,
    Customer_Address varchar(255),
    Customer_DOB date,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- e.g. 2021-04-20 12:00:00
);

-- Artist(AName)
CREATE TABLE Artist (
    AName varchar(50) NOT NULL PRIMARY KEY
);

-- Jose:    'Event' already exists in SQL, so I changed the name to 'Occasion'
-- Event(VID, EID, EName, Description, Time, Type, Date)
-- FK VID refers to Venue(ID) (NOT NULL)
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

-- Attends(VID, EID, CID)
-- FK VID refers to Occasion(ID) (NOT NULL)
-- FK EID refers to Occasion(ID) (NOT NULL)
-- FK CID refers to Customer(ID) (NOT NULL)
CREATE TABLE Attends (
    Event_ID int unsigned NOT NULL,
    Venue_ID int unsigned NOT NULL,
    Customer_ID int unsigned NOT NULL,
    PRIMARY KEY (Event_ID, venue_ID, Customer_ID),
    FOREIGN KEY (Event_ID, Venue_ID) REFERENCES Occasion(ID, Venue_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

-- Performed(VID, EID, AName)
-- FK VID refers to Occasion(ID) (NOT NULL)
-- FK EID refers to Occasion(ID) (NOT NULL)
-- FK AName refers to Artist(AName) (NOT NULL)
CREATE TABLE Performed (
    Venue_ID int unsigned NOT NULL,
    Event_ID int unsigned NOT NULL,
    Artist_Name varchar(50) NOT NULL,
    PRIMARY KEY (Venue_ID, Event_ID, Artist_Name),
    FOREIGN KEY (Venue_ID, Event_ID) REFERENCES Occasion(ID, Venue_ID),
    FOREIGN KEY (Artist_Name) REFERENCES Artist(AName)
);

-- Follows(AName, CID)
-- FK AName refers to Artist(AName)
-- FK CID refers to Customer(ID)
CREATE TABLE Follows (
    Artist_Name varchar(50) NOT NULL,
    Customer_ID int unsigned NOT NULL,
    PRIMARY KEY (Artist_Name, Customer_ID),
    FOREIGN KEY (Artist_Name) REFERENCES Artist(AName),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

-- Venue_PhoneNumber(VID, Phone_Number)
-- FK VID refers to Venue(ID) (NOT NULL)
CREATE TABLE Venue_PhoneNumber (
    Venue_ID int unsigned NOT NULL,
    Phone_Number varchar(25),
    PRIMARY KEY (Venue_ID, Phone_Number),
    FOREIGN KEY (Venue_ID) REFERENCES Venue(ID)
);

-- Event_Image(VID, EID, Image)
-- FK VID refers to Occasion(ID) (NOT NULL)
-- FK EID refers to Occasion(ID) (NOT NULL)
CREATE TABLE Event_Image (
    Venue_ID int unsigned NOT NULL,
    Event_ID int unsigned NOT NULL,
    -- Jose:    I think this should store a link to an image
    --          You CAN store images as raw data, but a link might be easier
    E_Image varchar(128),
    PRIMARY KEY (Venue_ID, Event_ID, E_Image),
    FOREIGN KEY (Venue_ID, Event_ID) REFERENCES Occasion(ID, Venue_ID)
);
z
-- Event_Price(VID, EID, Price)
-- FK VID refers to Occasion(ID) (NOT NULL)
-- FK EID refers to Occasion(ID) (NOT NULL)
CREATE TABLE Event_Price (
    Venue_ID int unsigned NOT NULL,
    Event_ID int unsigned NOT NULL,
    Price DECIMAL(10, 2) DEFAULT 0.00,
    PRIMARY KEY (Venue_ID, Event_ID),
    FOREIGN KEY (Venue_ID, Event_ID) REFERENCES Occasion(ID, Venue_ID)
);

-- Artist_Genre (AName, Genre)
-- FK AName refers to Artist(AName)
CREATE TABLE Artist_Genre (
    Artist_Name varchar(50) NOT NULL,
    Genre varchar(25),
    PRIMARY KEY (Artist_Name, Genre),
    FOREIGN KEY (Artist_Name) REFERENCES Artist(AName)
);

-- Customer_PhoneNumber(CID, Phone_Number)
-- FK CID refers to Customer(ID)
CREATE TABLE Customer_PhoneNumber (
    Customer_ID int unsigned NOT NULL,
    Phone_Number varchar(25),
    PRIMARY KEY (Customer_ID, Phone_Number),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(ID)
);

CREATE TABLE Customer_History LIKE Customer;

-- Enables foreign keys again
SET foreign_key_checks = 1;

-- Trigger 1: after_customer_delete (Maintain History of Deleted Customers)
-- Purpose: This trigger is designed to maintain a history of deleted customers by capturing their data before deletion into a history table (Customer_History). 
-- This ensures that even after a customer is deleted, their information is preserved for auditing or archival purposes.
DELIMITER //
CREATE TRIGGER after_customer_delete
AFTER DELETE ON Customer
FOR EACH ROW
BEGIN
    INSERT INTO Customer_History VALUES (OLD.ID, OLD.Customer_Username, OLD.Customer_Password, OLD.Customer_Address, OLD.Customer_DOB, OLD.Created_At);
END;//
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

DELIMITER //
-- Trigger 4: before_customer_change (Cascade Update on Customer ID Change)
-- Purpose: This trigger handles cascading updates when a customer's ID is changed (either through deletion or update).
-- It updates the corresponding Customer_ID in the Customer_PhoneNumber table to reflect the new ID and ensures that phone number records remain associated with the correct customer.
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

