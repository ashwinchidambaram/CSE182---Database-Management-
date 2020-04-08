/* #########################
##    Lab Assignment 1    ##
############################
## Ashwin Chidambaram     ##
## 04/01/2020             ##
## create.sql             ##
######################### */

-- Reset Lab 1 Schema
DROP SCHEMA Lab1 CASCADE;
CREATE SCHEMA Lab1;

-- Create Keepers Table
CREATE TABLE Keepers(
	keeperID INTEGER,
	name VARCHAR(30),
	hireDate DATE,
	keeperLevel CHAR(1),
	keeperSalary NUMERIC(7,2),
	PRIMARY KEY (keeperID)
);

-- Create Cages Table
CREATE TABLE Cages(
	cageID INT,
	cageSector CHAR(1),
	keeperID INT,
	PRIMARY KEY (cageID)
);

-- Create Species Table
CREATE TABLE Species(
	speciesID INT,
	speciesName VARCHAR(40),
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
	PRIMARY KEY (animalID)
);

-- Create Members Table
CREATE TABLE Members(
	memberID INT,
	name VARCHAR(30),
	address VARCHAR(40),
	memberStatus CHAR(1),
	joinDate DATE,
	expirationDate DATE,
	PRIMARY KEY (memberID)
);

-- Create CaveVisits Table
CREATE TABLE CageVisits(
	memeberID INT,
	cageID INT,
	visitDate DATE,
	likedVisit BOOL,
	PRIMARY KEY (memeberID, cageID, visitDate)
);
