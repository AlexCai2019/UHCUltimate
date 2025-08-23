#########################################################
# UHC Project 
# Name    : root.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/slow/
# Loop    : Yes. Execute as tag=lottery.
# func    : Change lottery result per 15 ticks
#########################################################

execute as @r run item modify entity @e[type=armor_stand, tag=lottery] armor.head {function: "fill_player_head", entity: "this"}
execute as @e[type=armor_stand, tag=lottery] run function uhc:lobby/lottery/slow/switch