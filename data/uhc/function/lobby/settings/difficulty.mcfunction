#########################################################
# UHC Project 
# Name    : difficulty.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust difficulty.
#########################################################

scoreboard players add @e[type=marker, tag=difficulty] difficulty 1
scoreboard players set @e[type=marker, tag=difficulty, scores={difficulty=4..}] difficulty 0

tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "遊戲難度", color: "gold"}, " | ", {selector: "@e[type=marker, tag=difficulty, scores={difficulty=3}]"}]