CREATE TABLE IF NOT EXISTS `groups`(groupId INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, `group` VARCHAR(2) NOT NULL
, teamId INTEGER NOT NULL
, insertDate DATETIME DEFAULT NOW());