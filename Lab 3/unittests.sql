
-- Foreign Key Violations ------------------------------------------------------

-- Violation 1 ----------
INSERT INTO CageVisits VALUES (1001, 1996, DATE '2/7/20', TRUE);

-- Violation 2 ----------
INSERT INTO CageVisits VALUES (10000001, 201, DATE '2/7/20', TRUE);

-- General Constraint Violations -----------------------------------------------

-- Part 1 Pass ----------------------
UPDATE  Species
SET     animalCount = 9
WHERE   speciesID = 404;

-- Part 1 Fail ----------------------
UPDATE  Species
SET     animalCount = -99
WHERE   speciesID = 404;

-- Part 2 Pass ----------------------
UPDATE  Members
SET     joinDate = DATE '4/11/20', expirationDate = DATE '9/6/20'
WHERE   memberID = 1005;

-- Part 2 Fail ----------------------
UPDATE  Members
SET     joinDate = DATE '9/6/20', expirationDate = DATE '4/11/20'
WHERE   memberID = 1005;

-- Part 3 Pass ----------------------
UPDATE  Keepers
SET     keeperLevel = NULL, keeperSalary = NULL
WHERE   keeperID = 6;

-- Part 3 Fail ----------------------
UPDATE  Keepers
SET     keeperLevel = NULL, keeperSalary = 12143
WHERE   keeperID = 6;
