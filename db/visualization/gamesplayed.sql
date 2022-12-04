-- games played ---
select m.phase
,g.`group`,
t.team_name `team`
,count(s.teamId) `GP` -- Games Played
from qtar.scores s
JOIN qtar.teams t ON t.team_id = s.teamId
JOIN qtar.`groups`g ON g.teamId = t.team_id
JOIN qtar.matches m ON m.matchId = s.matchId
GROUP BY 1,2,3
ORDER BY 1
;

