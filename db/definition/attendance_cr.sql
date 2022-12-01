CREATE TABLE IF NOT EXISTS attendances
(
    attendanceId INTEGER NOT NULL AUTO_INCREMENT
    , matchId INTEGER NOT NULL
    , attendance INTEGER NOT NULL
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT attendaces_pk PRIMARY KEY (attendanceId)
)