/* #########################
##### Lab Assignment 2 #####
############################
## Ashwin Chidambaram     ##
## 04/25/2020             ##
## query2.sql             ##
######################### */

/* ## Query 2 ####################################################################
## Output the name, address and cageID whenever a member who has that name and  ##
## address visited the cage with that cageID and liked that cage visit. For     ##
## this query, duplicates can appear in your result, if that’s appropriate. For ##
## example, if the same member visited a cage 5 times and liked 3 of the        ##
## visits, then that member’s name, address and the cageID should appear 3      ##
## times in the result. Don’t eliminate these duplicates.                       ##
############################################################################### */

SELECT name, address, CageVisits.cageID
FROM Members
LEFT OUTER JOIN CageVisits ON Members.memberID = CageVisits.memberID
WHERE likedVisit = 'TRUE'
