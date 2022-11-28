WITH base as
(
SELECT 
-- split string A
CASE
WHEN g.`group` LIKE 'A%' THEN 'A'
WHEN g.`group` LIKE 'B%' THEN 'B'
WHEN g.`group` LIKE 'C%' THEN 'C'
WHEN g.`group` LIKE 'D%' THEN 'D'
WHEN g.`group` LIKE 'E%' THEN 'E'
WHEN g.`group` LIKE 'F%' THEN 'F'
WHEN g.`group` LIKE 'G%' THEN 'G'
WHEN g.`group` LIKE 'H%' THEN 'H'
END `group`
, t.team_name `team`,
p.GP,
CASE
WHEN w.GW != '' THEN w.GW
ELSE 0
END 'W'
, 
CASE
WHEN l.GL != '' THEN l.GL
ELSE 0
END 'L'
, 
CASE
WHEN d.GD != '' THEN d.GD
ELSE 0
END 'D'
, gt.goal `G`
FROM teams t
LEFT JOIN qtar.vgwins w ON w.team = t.team_name
LEFT JOIN qtar.vgloses l ON l.team = t.team_name
LEFT JOIN qtar.vgdraws d ON d.team = t.team_name
JOIN qtar.vgplayed p ON p.team = t.team_name
JOIN qtar.`groups`g ON g.teamId = t.team_id
JOIN qtar.vgoalsbyteam gt ON gt.team = t.team_name
)

SELECT
`group`
, team
, GP
, (W * 3) + (D * 1) `PTS`
, W
, L
, D
, G
FROM base
ORDER BY 1,3 desc
;