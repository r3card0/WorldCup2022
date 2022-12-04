SELECT 
g.`group`,
team_winner team
, COUNT(team_winner) GW
, COUNT(team_winner) * 3 PTS

FROM vprestats vps
JOIN qtar.teams t ON t.team_name = vps.team_winner
JOIN qtar.`groups`g ON g.teamId = t.team_id
WHERE team_winner != '' 
GROUP BY 1,2
;