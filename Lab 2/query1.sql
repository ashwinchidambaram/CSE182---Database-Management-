/* #########################
##### Lab Assignment 2 #####
############################
## Ashwin Chidambaram     ##
## 04/25/2020             ##
## query1.sql             ##
######################### */

/* ## Query 1 ####################################################################
## cageSector is ‘N’ if a cage is in the North Sector of the zoo. Find the ID   ##
## for all Animals that are in the North Sector of the zoo. No duplicates       ##
## should appear in your answer.                                                ##
############################################################################### */

SELECT animalID
FROM Animals
LEFT OUTER JOIN Cages ON Animals.cageID = Cages.cageID
WHERE cageSector = 'N'
