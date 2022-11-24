SELECT team_name team, `group`
FROM `groups`g
JOIN  soccer.teams t ON t.team_id = g.teamId
ORDER BY `group`
;