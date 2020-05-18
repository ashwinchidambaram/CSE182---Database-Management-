/* #########################
##### Lab Assignment 3 #####
############################
## Ashwin Chidambaram     ##
## 05/17/2020             ##
## foreign.sql            ##
######################### */

-- Part 1
ALTER TABLE CageVisits ADD FOREIGN KEY (cageID) REFERENCES Cages(cageID);

-- Part 2
ALTER TABLE CageVisits ADD FOREIGN KEY (memberID) REFERENCES Members(memberID);
