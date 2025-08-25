#########################################################
# UHC Project 
# Name    : difficulty.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust difficulty.
#########################################################

execute if score @s book matches 13 run scoreboard players remove 00000000-0000-0000-0000-000000000001 diff 1
execute if score @s book matches 14 run scoreboard players add 00000000-0000-0000-0000-000000000001 diff 1

execute as 0-0-0-0-1 run scoreboard players set @s[scores={diff=4..}] diff 0
execute as 0-0-0-0-1 run scoreboard players set @s[scores={diff=..-1}] diff 3

execute if score 00000000-0000-0000-0000-000000000001 diff matches 0 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "遊戲難度", color: "gold"}, " | ", {translate: "options.difficulty.peaceful", color: "light_purple"}]
execute if score 00000000-0000-0000-0000-000000000001 diff matches 1 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "遊戲難度", color: "gold"}, " | ", {translate: "options.difficulty.easy", color: "light_purple"}]
execute if score 00000000-0000-0000-0000-000000000001 diff matches 2 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "遊戲難度", color: "gold"}, " | ", {translate: "options.difficulty.normal", color: "light_purple"}]
execute if score 00000000-0000-0000-0000-000000000001 diff matches 3 run tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "遊戲難度", color: "gold"}, " | ", {translate: "options.difficulty.hard", color: "light_purple"}]