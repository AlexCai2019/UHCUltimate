#########################################################
# UHC Project 
# Name    : border_mode.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust border_mode settings.
#########################################################

scoreboard players add @e[type=marker, tag=mode] border 1
scoreboard players set @e[type=marker, tag=mode, scores={border=3}] border 0

execute if score 00000000-0000-0000-0000-000000000001 border matches 1 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "特殊邊界模式", color: "gold"}, " | ", {selector: "@e[type=marker, tag=mode, scores={border=2}]", color: "light_purple"}]