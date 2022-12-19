CREATE TABLE IF NOT EXISTS actions
(
    actionId INTEGER NOT NULL AUTO_INCREMENT
    , `action` VARCHAR(20)
    , insertDate DATETIME NOT NULL DEFAULT NOW()
    , CONSTRAINT actions_pk PRIMARY KEY (actionId)
)