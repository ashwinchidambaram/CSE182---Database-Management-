
-- Part 1
ALTER TABLE Species ADD CONSTRAINT ani CHECK (animalCount >= 0);

-- Part 2
ALTER TABLE Members ADD CHECK(joinDate < expirationDate);

-- Part 3
ALTER TABLE Keepers ADD CHECK(keeperLevel IS NOT NULL OR keeperSalary IS NULL);
