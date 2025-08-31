#########################################################
# UHC Project 
# Name    : join_game.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/
# Loop    : Yes. Execute as players.
# func    : Initialize players that join game first time.
#########################################################

clear
effect clear
effect give @s blindness 5 0 true
effect give @s absorption 1 0 true
gamemode adventure
execute at f-f-f-f-f run spawnpoint @s ~ 150 ~
tp @s f-f-f-f-f
title @s title [{text: "UHC: ", color: "yellow", bold: true}, {text: "Ultimate", color: "light_purple", italic: true}]
title @s subtitle ["Designed by ", {text: "Jelly", color: "dark_purple"}, ", updated by ", {text: "Alex Cai", color: "gray"}]
tellraw @s [{text: "\nUHCU >>> ", color: "gray"}, {text: "歡迎您遊玩 ", color: "green"}, {text: "UHC: Ultimate", color: "gold"}]
tellraw @s [{text: "UHCU >>> ", color: "gray"}, {text: "若有任何建議或bug請", color: "white"}, {text: "點此回報", color: "aqua", hover_event: {action: "show_text", value: "點此進入地圖網站"}, click_event: {action: "open_url", url: "https://forum.gamer.com.tw/C.php?bsn=18673&snA=168664"}}]
tellraw @s ["", {text: "UHCU >>> ", color: "gray"}, "調整遊戲設定請", {text: "成為", color: "dark_aqua", extra: [{translate: "gameMode.creative"}], hover_event: {action: "show_text", value: ["點我成為", {translate: "gameMode.creative"}]}, click_event: {action: "run_command", command: "/gamemode creative"}}]
recipe give @s *
scoreboard players enable @s lottery
scoreboard players enable @s view_settings
team join solo @s