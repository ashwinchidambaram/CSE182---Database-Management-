/* #########################
##### Lab Assignment 2 #####
############################
## Ashwin Chidambaram     ##
## 04/25/2020             ##
## create.sql             ##
######################### */

-- Reset Lab 2 Schema
DROP SCHEMA Lab2 CASCADE;
CREATE SCHEMA Lab2;

-- Create Keepers Table
CREATE TABLE Keepers(
	keeperID INT,
	name VARCHAR(30),
	hireDate DATE NOT NULL,
	keeperLevel CHAR(1),
	keeperSalary NUMERIC(7,2),
	PRIMARY KEY (keeperID)
);

-- Create Cages Table
CREATE TABLE Cages(
	cageID INT,
	cageSector CHAR(1) NOT NULL,
	keeperID INT,
	PRIMARY KEY (cageID),
	FOREIGN KEY (keeperID) REFERENCES Keepers
);

-- Create Species Table
CREATE TABLE Species(
	speciesID INT,
	speciesName VARCHAR(40) UNIQUE NOT NULL,
	genus VARCHAR(40),
	animalCount INT,
	PRIMARY KEY (speciesID)
);

-- Create Animals Table
CREATE TABLE Animals(
	animalID INT,
	name VARCHAR(30),
	speciesID INT,
	animalAge INT,
	cageID INT,
	PRIMARY KEY (animalID),
	FOREIGN KEY (speciesID) REFERENCES Species,
	FOREIGN KEY (cageID) REFERENCES Cages,
  UNIQUE (name, speciesID)
);

-- Create Members Table
CREATE TABLE Members(
	memberID INT,
	name VARCHAR(30),
	address VARCHAR(40),
	memberStatus CHAR(1),
	joinDate DATE,
	expirationDate DATE,
	PRIMARY KEY (memberID),

  UNIQUE (name, address)
);

-- Create CaveVisits Table
CREATE TABLE CageVisits(
	memberID INT,
	cageID INT,
	visitDate DATE,
	likedVisit boolean,
	PRIMARY KEY (memberID, cageID, visitDate),
	FOREIGN KEY (cageID) REFERENCES Cages,
	FOREIGN KEY (memberID) REFERENCES Members
);
