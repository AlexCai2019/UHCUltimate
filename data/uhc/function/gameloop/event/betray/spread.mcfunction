#########################################################
# UHC Project 
# Name    : spread.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute in schedule
# func    : Select betrayers.
#########################################################

#kill vehicle
#execute at @a[predicate=uhc:riding] run kill @e[type=#uhc:rideable, distance=..1.2]
execute as @a[team=betrayer] run ride @s dismount

effect give @a[team=betrayer] resistance 15 9 true
execute at @e[tag=center] run spreadplayers ~ ~ 0 56 true @a[team=betrayer]

#kill @e[tag=set]