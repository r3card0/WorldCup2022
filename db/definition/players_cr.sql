CREATE TABLE IF NOT EXISTS players
(
    playerId INTEGER NOT NULL AUTO_INCREMENT
    , pname VARCHAR(30)
    , lastName VARCHAR(30)
    , teamId INTEGER NOT NULL
    , positionId INTEGER NOT NULL
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT players_pk PRIMARY KEY (playerId)
)