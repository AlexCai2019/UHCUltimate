#########################################################
# UHC Project 
# Name    : nether.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust nether settings.
#########################################################

execute if score @s book matches 25 run scoreboard players remove #nether_time nether_open 10
execute if score @s book matches 26 run scoreboard players add #nether_time nether_open 10

execute if score #nether_time nether_open matches 121.. run scoreboard players set #nether_time nether_open 40
execute if score #nether_time nether_open matches ..39 run scoreboard players set #nether_time nether_open 120

execute if score 00000000-0000-0000-0000-000000000001 nether_open matches 1 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "地獄關閉時間", color: "gold"}, " | ", {score: {name: "00000000-0000-0000-0000-000000000001", objective: "nether_time"}, color: "yellow", extra: ["分鐘"]}]