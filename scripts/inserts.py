def insert_matches():
    insert_ = "INSERT INTO qtar.matches(matchNo,`date`,stadiumId,localTeamId,visitorTeamId,weekNo,phase) VALUES(%s,%s,%s,%s,%s,%s,%s)"
    return insert_


def insert_scores():
    insert_ = "INSERT INTO qtar.scores(matchId,teamId,goal) VALUES(%s,%s,%s)"
    return insert_