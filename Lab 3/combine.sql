/* #########################
##### Lab Assignment 3 #####
############################
## Ashwin Chidambaram     ##
## 05/17/2020             ##
## combine.sql            ##
######################### */

BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Condition 1
UPDATE  Animals
SET animalID = c.animalID, speciesID = c.speciesID, cageID = c.cageID
FROM animalChanges c
WHERE c.animalID = Animals.animalID;

-- Condition 2
INSERT INTO Animals(animalID, speciesID, cageID)
SELECT c.animalID, c.speciesID, c.cageID
FROM animalChanges c
WHERE NOT EXISTS(SELECT *
				FROM Animals
				WHERE Animals.animalID = c.animalID);

COMMIT;
