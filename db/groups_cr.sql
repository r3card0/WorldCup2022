CREATE TABLE IF NOT EXISTS q_groups(group_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, q_group ENUM('A','B','C','D','E','F','G','H') NOT NULL UNIQUE
, insert_date DATETIME);