CREATE VIEW vgoalsbyteam as
(
    SELECT
t.team_name `team`
, sum(s.goal) `goal`
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
JOIN soccer.teams t ON t.team_id = s.teamId
GROUP BY 1
)