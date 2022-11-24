SELECT m.matchNo, m.matchId, m.localTeamId, lt.team_name, m.visitorTeamId, vt.team_name
FROM qtar.matches m
JOIN soccer.teams lt ON lt.team_id = m.localTeamId 
JOIN soccer.teams vt ON vt.team_id = m.visitorTeamId
ORDER BY m.matchNo
;