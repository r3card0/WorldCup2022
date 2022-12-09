/*
Table to stores the matches
*/
CREATE TABLE IF NOT EXISTS matches
(
    matchId INTEGER NOT NULL AUTO_INCREMENT
    , stadiumId INTEGER NOT NULL
    , localTeamId INTEGER NOT NULL
    , visitorTeamId INTEGER NOT NULL
    , matchNo INTEGER NOT NULL
    , weekNo INTEGER NOT NULL
    , phase INTEGER -- ENUM(1,2,3,4)  
    , `date` DATE
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT matches_pk PRIMARY KEY (matchId)
    -- , CONSTRAINT stadium_fk FOREIGN KEY (stadiumId)
    -- , CONSTRAINT localTeam_fk FOREIGN KEY (localTeamId)
    -- , CONSTRAINT visitorTeam_fk FOREIGN KEY (visitorTeamId)
)