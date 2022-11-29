INSERT INTO qtar.stadiums(stadiumId,stadium,cityId)
select stadium_id
, stadium_name
, city_id
FROM soccer.stadiums
WHERE stadium_id > 17
;