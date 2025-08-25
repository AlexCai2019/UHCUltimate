#########################################################
# UHC Project 
# Name    : gold_head.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust gold_head.
#########################################################

scoreboard players operation 00000000-0000-0000-0000-000000000010 gh_mode >< 00000000-0000-0000-0000-000000000011 gh_mode

execute if score 00000000-0000-0000-0000-000000000010 gh_mode matches 1 run return run tellraw @a [{text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "金頭顱模式", color: "gold"}, " | ", {text: "標準", color: "light_purple"}]
tellraw @a [{text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "金頭顱模式", color: "gold"}, " | ", {text: "快速", color: "light_purple"}]