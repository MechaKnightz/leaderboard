use speedrun;
/* replace this with DB_DATABASE environmental variable, with script maybe? */
CREATE TABLE `Speedruns` (
  `SpeedrunID` INT UNIQUE NOT NULL AUTO_INCREMENT,
  `Date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Time` INT NOT NULL,
  `Description` TEXT NULL,
  `Url` VARCHAR(2083) NOT NULL COMMENT 'url to video of run',
  `Type` ENUM(
    'ANY_PERCENT',
    'FULL_GAME_GLITCHLESS',
    'HUNDRED_PERCENT',
    'NO_KETAMINE',
    'VM_PERCENT',
    'DEATH_PERCENT',
    'NO_BOAT'
  ) NOT NULL,
  `Status` ENUM(
    'UNVERIFIED',
    'VERIFIED',
    'DECLINED'
    ) DEFAULT 'UNVERIFIED',
  `SubmitterID` INT NOT NULL REFERENCES `Users` (`UserID`),
  `VerifierID` INT NULL REFERENCES `Users` (`UserID`),
  PRIMARY KEY (`SpeedrunID`, `SubmitterID`)
) ENGINE = InnoDB;

CREATE TABLE `Users` (
  `UserID` INT NOT NULL UNIQUE,
  `Email` VARCHAR(254) UNIQUE NOT NULL,
  `Name` VARCHAR(15) UNIQUE,
  `Description` TEXT NULL,
  `Avatar` VARCHAR(2083) NULL,
  PRIMARY KEY (`UserID`, `Email`, `Name`)
) ENGINE = InnoDB;

/*Many to many between users if needed*/
/* CREATE TABLE `UsersSpeedruns` (
  `UserID` INT NOT NULL,
  `SpeedrunID` INT NOT NULL,
  PRIMARY KEY (`UserID`, `SpeedrunID`),
  CONSTRAINT `Constr_UsersSpeedruns_User_fk` 
    FOREIGN KEY `User_fk` (`User`) REFERENCES `Users` (`UserID`) 
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Constr_UsersSpeedruns_Speedrun_fk` 
    FOREIGN KEY `Speedrun_fk` (`Speedrun`) REFERENCES `Speedruns` (`SpeedrunID`) 
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB; */

