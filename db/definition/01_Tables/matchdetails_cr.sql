/*
Table to stores match details
*/

CREATE TABLE IF NOT EXISTS matchdetails
(
    detailId INTEGER NOT NULL AUTO_INCREMENT
    , matchId INTEGER NOT NULL
    , actionId INTEGER NOT NULL
    , playerId INTEGER NOT NULL
    , half INTEGER
    , `minute` INTEGER
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT details_pk PRIMARY KEY (detailId)
)