SELECT DISTINCT
m.matchNo `match`
, lt.team_name `team`
, s.goal
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId AND s.teamId = m.localTeamId
JOIN soccer.teams lt ON lt.team_id = m.localTeamId
UNION
SELECT DISTINCT
m.matchNo `match`
, vt.team_name `team`
, s.goal
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId AND s.teamId = m.visitorTeamId
JOIN soccer.teams vt ON vt.team_id = m.visitorTeamId
ORDER BY 1,3 desc
;



-- SELECT
-- m.matchNo
-- ,t.team_name 
-- ,count(minute) goal
-- FROM qtar.matches m
-- JOIN qtar.scores s ON s.matchId = m.matchId AND s.teamId = m.localTeamId 
-- JOIN soccer.teams t ON t.team_id = m.localTeamId 
-- GROUP BY 1,2

-- UNION
-- SELECT distinct v.matchNo,t.team_name, goal
-- FROM 
-- (
--     SELECT
--     m.matchId
--     ,m.matchNo
--     ,t.team_name 
--     ,count(minute) goal
--     FROM qtar.matches m
--     LEFT JOIN qtar.scores s ON s.matchId = m.matchId AND s.teamId = m.visitorTeamId 
--     JOIN soccer.teams t ON t.team_id = m.visitorTeamId 
--     GROUP BY 1,2 

-- ) v
-- JOIN soccer.teams t ON t.team_name = v.team_name
-- JOIN qtar.matches m ON m.matchId = v.matchId
-- JOIN qtar.scores s ON s.matchId = m.matchId
-- ORDER BY 1,3 desc
-- ;