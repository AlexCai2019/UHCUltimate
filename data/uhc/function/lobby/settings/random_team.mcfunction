###################################################
# UHC Project 
# Name    : random_team.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/settings
# Loop    : while random-teamed process been called.
# func    : randomly assigns players to teams.
###################################################

#ramdom assignment
team join red @r[team=solo]
team join blue @r[team=solo]
execute if score #team_num random_team matches 3.. run team join green @r[team=solo]
execute if score #team_num random_team matches 4.. run team join yellow @r[team=solo]
execute if score #team_num random_team matches 5.. run team join purple @r[team=solo]
execute if score #team_num random_team matches 6.. run team join gray @r[team=solo]
execute if score #team_num random_team matches 7.. run team join red_dark @r[team=solo]
execute if score #team_num random_team matches 8.. run team join blue_dark @r[team=solo]
execute if score #team_num random_team matches 9.. run team join green_dark @r[team=solo]
execute if score #team_num random_team matches 10.. run team join gold @r[team=solo]
execute if score #team_num random_team matches 11.. run team join aqua @r[team=solo]
execute if score #team_num random_team matches 12.. run team join aqua_dark @r[team=solo]
execute if score #team_num random_team matches 13.. run team join pink @r[team=solo]
execute if score #team_num random_team matches 14.. run team join gray_dark @r[team=solo]
execute if entity @a[team=solo] run function uhc:lobby/settings/random_team