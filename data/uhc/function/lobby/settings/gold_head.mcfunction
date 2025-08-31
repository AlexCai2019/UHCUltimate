#########################################################
# UHC Project 
# Name    : gold_head.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust gold_head.
#########################################################

scoreboard players operation 00000000-0000-0000-0000-000000000006 gh_mode >< 00000000-0000-0000-0000-000000000006 gh_mode
tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "金頭顱模式", color: "gold"}, " | ", {selector: "@e[type=marker, tag=gh, scores={gh_mode=1}]"}]