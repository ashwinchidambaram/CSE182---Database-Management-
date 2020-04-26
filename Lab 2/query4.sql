/* #########################
##### Lab Assignment 2 #####
############################
## Ashwin Chidambaram     ##
## 04/25/2020             ##
## query4.sql             ##
######################### */

/* ## Query 4 ####################################################################
## Find the ID and name of each member whose name ends in ‘th’ (lowercase),     ##
## and who visited a cage that has a lion inside. No duplicates should appear   ##
## in your answer.                                                              ##
############################################################################### */

SELECT DISTINCT Members.memberID, Members.name
FROM CageVisits
INNER JOIN Members ON CageVisits.memberID = Members.memberID
INNER JOIN Animals ON CageVisits.cageID = Animals.cageID
WHERE speciesID IN (SELECT speciesID
				   FROM Species
				   WHERE speciesName = 'lion')
AND Members.name LIKE '%th'
