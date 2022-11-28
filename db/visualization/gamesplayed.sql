-- games played ---
select g.`group`,
t.team_name `team`
,count(s.teamId) `GP` -- games played
from qtar.scores s
JOIN soccer.teams t ON t.team_id = s.teamId
JOIN qtar.`groups`g ON g.teamId = t.team_id
GROUP BY 1,2
ORDER BY 1
;
