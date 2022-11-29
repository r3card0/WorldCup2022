SELECT positionId,p.pname, p.lastName, t.team_name `team`
, g.`group`
FROM qtar.players p
JOIN qtar.teams t ON t.team_id = p.teamId
JOIN qtar.`groups`g ON g.teamId = t.team_id
ORDER BY 5,4,1,3