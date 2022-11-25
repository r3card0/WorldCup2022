SELECT
t.team_name
, sum(s.goal)
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
JOIN soccer.teams t ON t.team_id = s.teamId
GROUP BY 1
ORDER BY 2 desc
;