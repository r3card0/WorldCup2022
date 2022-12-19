/*
Players of France
*/

DELIMITER //
CREATE PROCEDURE playersFrance()
BEGIN
SELECT p.playerId, p.pname
, p.lastName, t.team_name
FROM qtar.players p
JOIN qtar.teams t ON t.team_id = p.teamId
WHERE t.team_id = 31
;
END //
DELIMITER
;