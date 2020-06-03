CREATE OR REPLACE FUNCTION increaseSomeKeeperSalariesFunction(maxIncreaseAmount INTEGER) RETURNS INTEGER AS $$

  DECLARE
  increase INTEGER;
  newSalary NUMERIC(7,2);
  salaryIncrease INTEGER;

  DECLARE salaries CURSOR FOR SELECT *
    FROM Keepers
    WHERE keeperLevel IN ('A', 'B', 'C')
    AND keeperSalary IS NOT NULL
    ORDER BY Keepers.keeperLevel ASC, Keepers.hireDate ASC;

  tKeepID INTEGER;
  tName VARCHAR(30);
  tHireDate DATE;
  tKeeperLevel CHAR(1);
  tKeeperSalary NUMERIC(7,2);

  BEGIN
    increase = 0;

    OPEN salaries;
    LOOP
      FETCH salaries INTO tKeepID, tName, tHireDate, tKeeperLevel, tKeeperSalary;

      EXIT WHEN NOT FOUND OR increase = maxIncreaseAmount;

      CASE tKeeperLevel
        WHEN 'A' THEN
          salaryIncrease = 10;

        When 'B' THEN
          salaryIncrease = 20;

        WHEN 'C' THEN
          salaryIncrease = 30;

      END CASE;

      newSalary = tKeeperSalary + salaryIncrease;

      increase = increase + salaryIncrease;

      IF increase > maxIncreaseAmount THEN
        increase = increase - salaryIncrease;
        RETURN increase;

        newSalary = tKeeperSalary - salaryIncrease;

      END IF;

      UPDATE Keepers
        SET keeperSalary = newSalary
        WHERE keeperID = tKeepID;

    END LOOP;
    CLOSE salaries;
    RETURN increase;

  END

$$ LANGUAGE plpgsql;
