SELECT phase,
lgroup,
CASE
WHEN lt_goal < vt_goal THEN visitor_team
WHEN lt_goal > vt_goal THEN local_team
END team_winner
,
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
FROM vmatchesresults 
;