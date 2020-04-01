CREATE TABLE Keepers(
	keeperID INT,
	name VARCHAR(30),
	hireDate DATE,
	keeperLevel CHAR(1),
	keeperSalary NUMERIC(5,2),
	PRIMARY KEY (keeperID)
);

CREATE TABLE Cages(
	cageID INT,
	cageSector CHAR(1),
	keeperID INT,
	PRIMARY KEY (cageID)
);

CREATE TABLE Species(
	speciesID INT,
	speciesName VARCHAR(40),
	genus VARCHAR(40),
	animalCount INT,
	PRIMARY KEY (speciesID)
);

CREATE TABLE Animals(
	animalID INT,
	name VARCHAR(30),
	speciesID INT,
	animalAge INT,
	cageID INT,
	PRIMARY KEY (animalID)
);

CREATE TABLE Members(
	memberID INT,
	name VARCHAR(30),
	address VARCHAR(40),
	memberStatus CHAR(1),
	joinDate DATE,
	expirationDate DATE,
	PRIMARY KEY (memberID)
);

CREATE TABLE CageVisits(
	memeberID INT,
	cageID INT,
	visitDate DATE,
	likedVisit BOOL,
	PRIMARY KEY (memeberID, cageID, visitDate)
);
