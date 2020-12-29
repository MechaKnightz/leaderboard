use speedrun;
/* replace this with DB_DATABASE environmental variable, with script maybe? */
CREATE TABLE speedruns (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'id',
  `date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` INT NOT NULL,
  `description` TEXT NULL,
  `url` VARCHAR(2083) NOT NULL COMMENT 'url to video of run',
  `type` ENUM(
    'ANY_PERCENT',
    'FULL_GAME_GLITCHLESS',
    'HUNDRED_PERCENT',
    'NO_KETAMINE',
    'VM_PERCENT',
    'DEATH_PERCENT',
    'NO_BOAT'
  ) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;
INSERT INTO `speedruns` (
    `time`,
    `description`,
    `url`,
    `type`
  )
VALUES (
    '42131',
    'best run ever',
    'youtube.com',
    'ANY_PERCENT'
  );
INSERT INTO `speedruns` (
    `time`,
    `description`,
    `url`,
    `type`
  )
VALUES (
    '51232',
    'best run ever',
    'youtube.com',
    'ANY_PERCENT'
  );
INSERT INTO `speedruns` (
    `time`,
    `description`,
    `url`,
    `type`
  )
VALUES (
    '123',
    'best run ever',
    'youtube.com',
    'VM_PERCENT'
  );
INSERT INTO `speedruns` (
    `time`,
    `description`,
    `url`,
    `type`
  )
VALUES (
    '51232',
    'best run ever',
    'youtube.com',
    'VM_PERCENT'
  );
INSERT INTO `speedruns` (
    `time`,
    `description`,
    `url`,
    `type`
  )
VALUES (
    '21341',
    'best run ever',
    'youtube.com',
    'FULL_GAME_GLITCHLESS'
  );