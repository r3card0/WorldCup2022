SELECT
'mas goles' `goleo`
, t.team_name
, s.goal `goals`
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
JOIN soccer.teams t ON t.team_id = s.teamId
where s.goal = (
    SELECT
    max(s.goal)
    FROM qtar.scores s
    JOIN qtar.matches m ON m.matchId = s.matchId
    JOIN soccer.teams t ON t.team_id = s.teamId
)

UNION

SELECT
'menos goles' `goleo`
, t.team_name
, s.goal `goals`
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
JOIN soccer.teams t ON t.team_id = s.teamId
where s.goal = (
    SELECT
    min(s.goal)
    FROM qtar.scores s
    JOIN qtar.matches m ON m.matchId = s.matchId
    JOIN soccer.teams t ON t.team_id = s.teamId
)
;