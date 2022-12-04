CREATE VIEW vmatchesresults as
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
, st.stadium
, lg.`group`lgroup
, lt.team_name `local_team`
, ls.goal `lt_goal`
, vg.`group`vgroup
, vt.team_name `visitor_team`
, vs.goal `vt_goal`
FROM qtar.matches m
JOIN qtar.scores ls ON m.matchId = ls.matchId
JOIN qtar.scores vs ON m.matchId = vs.matchId
JOIN qtar.teams lt ON lt.team_id = m.localTeamId AND lt.team_id = ls.teamId
JOIN qtar.teams vt ON vt.team_id = m.visitorTeamId AND vt.team_id = vs.teamId
JOIN qtar.stadiums st ON st.stadiumId = m.stadiumId
JOIN qtar.`groups`lg ON lg.teamId = lt.team_id 
JOIN qtar.`groups`vg ON vg.teamId = vt.team_id 
ORDER BY 3,1
)
;