SELECT
st.stadium
, sum(s.goal) goals
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
JOIN qtar.stadiums st ON st.stadiumId = m.stadiumId
JOIN teams t ON t.team_id = s.teamId
GROUP BY 1
ORDER BY 2 desc
;