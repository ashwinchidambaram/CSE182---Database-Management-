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
