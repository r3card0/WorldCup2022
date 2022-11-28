-- Extraction of total goals per day
SELECT distinct m.`date`,sum(s.goal) `total`
, round(avg(s.goal),2) `av_p_day`
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
GROUP BY 1
ORDER BY 1
;