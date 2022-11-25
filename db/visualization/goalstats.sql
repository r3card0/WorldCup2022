SELECT
sum(s.goal) `total`
, round(avg(s.goal),2) `avg_per_match`
, round(sum(s.goal) / (count(distinct m.`date`)),2) `avg_per_day`
FROM qtar.scores s
JOIN qtar.matches m ON m.matchId = s.matchId
;