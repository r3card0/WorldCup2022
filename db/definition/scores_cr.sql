CREATE TABLE IF NOT EXISTS scores
(
    scoreId INTEGER NOT NULL AUTO_INCREMENT
    , matchId INTEGER NOT NULL
    , teamId INTEGER NOT NULL
    , minute INTEGER NOT NULL
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT scores_pk PRIMARY KEY (scoreId)
)