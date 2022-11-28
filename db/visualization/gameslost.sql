SELECT g.`group`, 
team_loser `team`
, count(team_loser) `GL`
FROM 
(
WITH base as
(
    SELECT DISTINCT m.matchNo `match`,
CASE m.phase
    WHEN 1 THEN 'group'
    WHEN 2 THEN 'Round of 16' 
    WHEN 3 THEN 'Quarter Finals'
    WHEN 4 THEN 'Semi Finals'
    WHEN 5 THEN '3rd Place'
    WHEN 6 THEN 'Final'
    ELSE 'Not considered'
END phase
, m.`date`
, st.stadium_name `stadium`
, lg.`group`lgroup
, lt.team_name `local_team`
, ls.goal `lt_goal`
, vg.`group`vgroup
, vt.team_name `visitor_team`
, vs.goal `vt_goal`
FROM qtar.matches m
JOIN qtar.scores ls ON m.matchId = ls.matchId
JOIN qtar.scores vs ON m.matchId = vs.matchId
JOIN soccer.teams lt ON lt.team_id = m.localTeamId AND lt.team_id = ls.teamId
JOIN soccer.teams vt ON vt.team_id = m.visitorTeamId AND vt.team_id = vs.teamId
JOIN soccer.stadiums st ON st.stadium_id = m.stadiumId
JOIN qtar.`groups`lg ON lg.teamId = lt.team_id 
JOIN qtar.`groups`vg ON vg.teamId = vt.team_id 
ORDER BY 3,1
)
SELECT lgroup,
CASE
WHEN lt_goal < vt_goal THEN visitor_team
WHEN lt_goal > vt_goal THEN local_team
END team_winner
,
vgroup,
CASE 
WHEN lt_goal < vt_goal THEN local_team
WHEN lt_goal > vt_goal THEN visitor_team
END team_loser
,
CASE 
WHEN lt_goal = vt_goal THEN local_team
END empate
,
CASE 
WHEN lt_goal = vt_goal THEN visitor_team
END empate2
FROM base
) base 
JOIN soccer.teams t ON t.team_name = base.team_loser
JOIN qtar.`groups`g ON g.teamId = t.team_id 
WHERE team_loser != ''
GROUP BY 1,2
ORDER BY 1
;