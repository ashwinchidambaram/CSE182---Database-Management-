/* #########################
##### Lab Assignment 3 #####
############################
## Ashwin Chidambaram     ##
## 05/17/2020             ##
## createview.sql         ##
######################### */

CREATE VIEW viewComputedCount AS
SELECT Species.speciesID, COUNT(animalID) AS computedAnimalCount
FROM Species
JOIN Animals ON Species.speciesID = Animals.speciesID
GROUP BY Species.speciesID
HAVING COUNT(animalID) >= 3
