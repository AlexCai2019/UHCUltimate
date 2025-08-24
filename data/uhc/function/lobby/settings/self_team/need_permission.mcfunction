#########################################################
# UHC Project 
# Name    : need_permission.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/settings/self_team/
# Loop    : No. Called while someone choose team.
# func    : To let players join team they have chosen.
#########################################################

#choose team
execute if score @s choose_team matches 3 run return run team join red
execute if score @s choose_team matches 4 run return run team join blue
execute if score @s choose_team matches 5 run return run team join green
execute if score @s choose_team matches 6 run return run team join yellow
execute if score @s choose_team matches 7 run return run team join purple
execute if score @s choose_team matches 8 run return run team join gray
execute if score @s choose_team matches 9 run return run team join red_dark
execute if score @s choose_team matches 10 run return run team join blue_dark
execute if score @s choose_team matches 11 run return run team join green_dark
execute if score @s choose_team matches 12 run return run team join gold
execute if score @s choose_team matches 13 run return run team join aqua
execute if score @s choose_team matches 14 run return run team join aqua_dark
execute if score @s choose_team matches 15 run return run team join pink
execute if score @s choose_team matches 16 run team join gray_dark