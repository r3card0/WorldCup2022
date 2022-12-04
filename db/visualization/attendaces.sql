SELECT
m.matchNo, a.attendance
, concat(lt.team_name,' vs ',  vt.team_name) as `mathc`
FROM attendances a
JOIN matches m ON m.matchId = a.matchId
JOIN teams lt ON lt.team_id = m.localTeamId 
JOIN teams vt ON vt.team_id = m.visitorTeamId
ORDER BY 2 desc
;