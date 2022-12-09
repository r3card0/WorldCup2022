/*
View to visualize goals by tema
*/
CREATE VIEW vgoalsbyteam as
(
SELECT
t.team_name
, sum(s.goal) `goal`
, m.phase
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
JOIN teams t ON t.team_id = s.teamId
GROUP BY 1,3
ORDER BY 2 desc
)