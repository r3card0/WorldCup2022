-- this script select data from teams, q_groups and teams_temp tables

SELECT group_id, team_id, tt.group_pos
FROM teams_temp tt
JOIN q_groups g ON g.q_group = tt.q_group
JOIN teams t ON t.team_name = tt.team_name
;