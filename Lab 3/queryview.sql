
-- Part 1
SELECT Species.speciesID, speciesName, animalCount, computedAnimalCount
FROM viewComputedCount
INNER JOIN Species ON viewComputedCount.speciesID = Species.speciesID
WHERE computedAnimalCount <> animalCount

/* Resulting Output

  speciesID |  speciesName  | animalCount | computedAnimalCount
---------------------------------------------------------------
    404     |      lion     |      2      |         3
    405     |     panther   |      0      |         4
    407     |   small cat   |      2      |         4

*/

-- Part 2
DELETE FROM Animals
WHERE animalID = 10014

/* Resulting Output from running ONLY first delete

  speciesID |  speciesName  | animalCount | computedAnimalCount
---------------------------------------------------------------
    405     |     panther   |      0      |         4
    407     |   small cat   |      2      |         4

*/

DELETE FROM Animals
WHERE animalID = 10015

/* Resulting Output from running ONLY second delete

  speciesID |  speciesName  | animalCount | computedAnimalCount
---------------------------------------------------------------
    401     |     tiger     |      4      |         3
    404     |      lion     |      2      |         3
    405     |     panther   |      0      |         4
    407     |   small cat   |      2      |         4

*/

--------------------------------------------------------------------------------

/* Resulting Output from running both deletes

  speciesID |  speciesName  | animalCount | computedAnimalCount
---------------------------------------------------------------
    401     |     tiger     |      4      |         3
    405     |     panther   |      0      |         4
    407     |   small cat   |      2      |         4

*/
