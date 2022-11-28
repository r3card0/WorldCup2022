CREATE TABLE IF NOT EXISTS stadiums
(
    stadiumId INTEGER NOT NULL AUTO_INCREMENT
    , stadium VARCHAR(30)  NOT NULL
    , cityId INTEGER
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT stadiums_pk PRIMARY KEY (stadiumId)
);