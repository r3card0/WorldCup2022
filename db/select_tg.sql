SELECT team_name team
, g.q_group grupos
, gp.group_pos
FROM group_positions gp
JOIN q_groups g ON g.group_id = gp.group_id
JOIN teams t ON t.team_id = gp.team_id
ORDER BY group_pos
;  