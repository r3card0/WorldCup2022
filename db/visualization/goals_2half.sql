/*
How many goals has been scored on second half
*/
SELECT
count(md.actionId) goals
, '2nd' half
FROM matchdetails md
JOIN matches m ON m.matchId = md.matchId
JOIN players p ON p.playerId = md.playerId
JOIN actions a ON a.actionId = md.actionId
JOIN teams t ON t.team_id = p.teamId
WHERE md.half = 2
AND md.actionId = 1