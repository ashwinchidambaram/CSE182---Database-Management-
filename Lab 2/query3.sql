/* #########################
##### Lab Assignment 2 #####
############################
## Ashwin Chidambaram     ##
## 04/25/2020             ##
## query3.sql             ##
######################### */

/* ## Query 3 ####################################################################
## An animal is a lion if its speciesName is ‘lion’, and similarly for tiger,   ##
## etc. Find the ID, name and salary for each keeper who is the keeper for a    ##
## cage which has both a lion and a tiger inside. In your result, tuples with   ##
## the biggest salary should appear first; result tuples that have the same     ##
## salary, should appear alphabetized by name. No duplicates should appear in   ##
## your answer.                                                                 ##
############################################################################### */

SELECT DISTINCT(Keepers.keeperID), Keepers.name, Keepers.keeperSalary
FROM Cages
INNER JOIN Keepers ON Cages.keeperID = Keepers.keeperID
INNER JOIN Animals ON Cages.cageID = Animals.cageID
WHERE speciesID IN (SELECT speciesID
				   FROM Species
				   WHERE speciesName = 'lion' or speciesName = 'tiger')
ORDER BY keeperSalary DESC, name

SELECT DISTINCT *
FROM Cages
INNER JOIN Keepers ON Cages.keeperID = Keepers.keeperID
INNER JOIN Animals ON Cages.cageID = Animals.cageID
INNER JOIN Species ON Animals.speciesID = Species.speciesID
WHERE speciesName = 'lion' or speciesName = 'tiger' AND


SELECT DISTINCT(Keepers.keeperID), Keepers.name, Keepers.keeperSalary
FROM Cages
INNER JOIN Keepers ON Cages.keeperID = Keepers.keeperID
INNER JOIN Animals ON Cages.cageID = Animals.cageID
INNER JOIN Species ON Animals.speciesID = Species.speciesID
WHERE speciesName = 'lion' or speciesName = 'tiger' AND Cages.cageID = Animals.cageID AND Cages.cageID = Animals.cageID
ORDER BY keeperSalary DESC, name 
