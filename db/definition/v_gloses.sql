CREATE VIEW vgloses AS
(
    SELECT 
g.`group`,
team_loser team
, COUNT(team_loser) GL

FROM vprestats vps
JOIN qtar.teams t ON t.team_name = vps.team_loser
JOIN qtar.`groups`g ON g.teamId = t.team_id
WHERE team_loser != '' 
GROUP BY 1,2
)
;