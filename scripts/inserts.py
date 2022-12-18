def insert_matches():
    insert_ = "INSERT INTO qtar.matches(matchNo,`date`,stadiumId,localTeamId,visitorTeamId,weekNo,phase) VALUES(%s,%s,%s,%s,%s,%s,%s)"
    return insert_


def insert_scores():
    insert_ = "INSERT INTO qtar.scores(matchId,teamId,goal) VALUES(%s,%s,%s)"
    return insert_

def insert_players():
    insert_ = "INSERT INTO qtar.players(pname,lastName,teamId,positionId) VALUES(%s,%s,%s,%s)"
    return insert_

def insert_attendances():
    insert_ = "INSERT INTO qtar.attendances(matchId,attendance) VALUES (%s,%s)"
    return insert_

def insert_actions():
    insert_ = "INSERT INTO qtar.actions(action) VALUES (%s)"
    return insert_


def insert_details():
    insert_ = "INSERT INTO qtar.matchdetails(matchId,half,minute,actionId,playerId) VALUES (%s,%s,%s,%s,%s)"
    return insert_