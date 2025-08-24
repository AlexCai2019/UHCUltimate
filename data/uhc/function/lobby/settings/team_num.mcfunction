#########################################################
# UHC Project 
# Name    : team_num.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust team_num.
#########################################################

# -1 or +1
execute if score @s book matches 1 run scoreboard players remove #team_num random_team 1
execute if score @s book matches 2 run scoreboard players add #team_num random_team 1

#make random_team be between 2~14
execute if score #team_num random_team matches 15.. run scoreboard players set random_team random_team 2
execute if score #team_num random_team matches ..1 run scoreboard players set random_team random_team 14

tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "隨機分隊數量", color: "gold"}, " | ", {score: {name: "#team_num", objective: "random_team"}, color: "yellow", extra: ["隊"]}]