INSERT INTO group_positions(group_id,team_id,group_pos,date) (SELECT group_id, team_id, tt.group_pos,(select current_date())
FROM teams_temp tt
JOIN q_groups g ON g.q_group = tt.q_group
JOIN teams t ON t.team_name = tt.team_name)
;