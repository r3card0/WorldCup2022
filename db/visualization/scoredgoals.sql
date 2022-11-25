SELECT distinct m.`date`,sum(s.goal) `total`
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
GROUP BY 1
ORDER BY 1
;