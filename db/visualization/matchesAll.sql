SELECT m.matchNo, m.`date`,s.stadium_name stadium, lt.team_name l_team, vt.team_name v_team, m.weekNo week, 
CASE m.phase
    WHEN 1 THEN 'group'
    WHEN 2 THEN 'Round of 16' 
    WHEN 3 THEN 'Quarter Finals'
    WHEN 4 THEN 'Semi Finals'
    WHEN 5 THEN '3rd Place'
    WHEN 6 THEN 'Final'
    ELSE 'Not considered'
END phase
FROM qtar.matches m 
JOIN soccer.stadiums s ON s.stadium_id = m.stadiumId
JOIN soccer.teams lt ON lt.team_id = m.localTeamId 
JOIN soccer.teams vt ON vt.team_id = m.visitorTeamId
ORDER BY m.matchNo
;