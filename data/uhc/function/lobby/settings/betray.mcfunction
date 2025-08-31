#########################################################
# UHC Project 
# Name    : betray.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust betrayer settings.
#########################################################

#########################################################
# UHC Project 
# Name    : border_mode.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust border_mode settings.
#########################################################

execute if score @s book matches 28 run scoreboard players remove #betray_num betray 1
execute if score @s book matches 29 run scoreboard players add #betray_num betray 1
execute if score @s book matches 30 run scoreboard players remove #betray_time betray 5
execute if score @s book matches 31 run scoreboard players add #betray_time betray 5
execute if score @s book matches 32 run scoreboard players remove #betray_tp betray 20
execute if score @s book matches 33 run scoreboard players add #betray_tp betray 20

execute if score #betray_time betray matches ..0 run scoreboard players set #betray_time betray 1
execute if score #betray_time betray matches 5.. run scoreboard players set #betray_time betray 4
execute if score #betray_time betray matches 76.. run scoreboard players set #betray_time betray 5
execute if score #betray_time betray matches ..4 run scoreboard players set #betray_time betray 75
execute if score #betray_time betray matches 81.. run scoreboard players set #betray_time betray 20
execute if score #betray_time betray matches ..19 run scoreboard players set #betray_time betray 80

execute if score 00000000-0000-0000-0000-000000000000 betray matches 1 run return fail

execute if score @s book matches ..29 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "背叛人數", color: "gold"}, " | ", {score: {name: "#betray_num", objective: "betray"}, color: "yellow", extra: ["人"]}]
execute if score @s book matches 30..31 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "背叛啟動時間", color: "gold"}, " | ", {score: {name: "#betray_time", objective: "betray"}, color: "yellow", extra: ["分鐘"]}]
execute if score @s book matches 32.. run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "背叛公佈時間", color: "gold"}, " | ", {score: {name: "#betray_tp", objective: "betray"}, color: "yellow", extra: ["分鐘"]}]