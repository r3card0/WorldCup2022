/*
Table to store the teams
*/

CREATE TABLE IF NOT EXISTS teams
(
    teamId INTEGER NOT NULL AUTO_INCREMENT
    , team VARCHAR(30)
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT teams_pk PRIMARY KEY (teamId)
)