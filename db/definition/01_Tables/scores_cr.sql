/*
Table to store scores of the matches
*/
CREATE TABLE IF NOT EXISTS scores
(
    scoreId INTEGER NOT NULL AUTO_INCREMENT
    , matchId INTEGER NOT NULL
    , teamId INTEGER NOT NULL
    , goal INTEGER NOT NULL
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT scores_pk PRIMARY KEY (scoreId)
)