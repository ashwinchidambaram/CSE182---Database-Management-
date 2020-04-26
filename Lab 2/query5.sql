/* #########################
##### Lab Assignment 2 #####
############################
## Ashwin Chidambaram     ##
## 04/25/2020             ##
## query5.sql             ##
######################### */

/* ## Query 5 ####################################################################
## For each animal for which all of the following are true:                     ##
##                                                                              ##
##    a) that animal’s speciesName has an ‘a’ (lowercase) in it, and            ##
##    b) the genus for that animal’s species isn't NULL, and                    ##
##    c) the keeper of that animal’s cage was hired between January 2, 2019     ##
##       and December 30, 2019 (including those dates), and                     ##
##    d) somebody visited that animal’s cage and did not like the cage visit,   ##
##                                                                              ##
## Output the animalID, cageID and age of the animal, and the keeperID and      ##
## hireDate of that cage’s keeper. The 5 attributes in your result should       ##
## appear as theAnimalID, theCageID, theAge, theKeeperID and theHireDate. No    ##
## duplicates should appear in your result.                                     ##
############################################################################### */

SELECT Animals.animalID, Cages.cageID, Animals.animalAge, Keepers.keeperID, Keepers.hireDate
FROM Keepers
INNER JOIN Cages ON Cages.keeperID = Keepers.keeperID
INNER JOIN CageVisits ON Cages.cageID = CageVisits.cageID
INNER JOIN Animals ON CageVisits.cageID = Animals.cageID
WHERE speciesID IN (SELECT speciesID
					FROM Species
					WHERE speciesName LIKE '%a%' AND genus IS NOT NULL)
AND Keepers.hireDate >= '1/2/2019' AND Keepers.hireDate <= '12/30/2019'
AND CageVisits.likedVisit = FALSE
