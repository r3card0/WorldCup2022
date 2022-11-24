INSERT INTO `groups`(teamId,`group`)
SELECT team_id teamId, tt.group_pos
FROM teams_temp tt
JOIN q_groups g ON g.q_group = tt.q_group
JOIN soccer.teams t ON t.team_name = tt.team_name
;