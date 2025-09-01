###################################################
# UHC Project 
# Name    : spread_2.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/arena_tp/spread_2
# Loop    : No.
# func    : To spread players for arena mode.
###################################################

#kill vehicle
#execute at @a[predicate=uhc:riding] run kill @e[type=#uhc:rideable, distance=..1.2]
execute as @a run ride @s dismount

execute at @s run tp @a[nbt=!{Dimension: "minecraft:the_nether"}] ~ 120 ~

execute at @s if score #border_end border matches 16 in overworld run spreadplayers ~ ~ 0 7 true @a[team=!solo]
execute at @s if score #border_end border matches 48 in overworld run spreadplayers ~ ~ 0 23 true @a[team=!solo]
execute at @s if score #border_end border matches 80 in overworld run spreadplayers ~ ~ 0 39 true @a[team=!solo]
execute at @s if score #border_end border matches 112 in overworld run spreadplayers ~ ~ 0 55 true @a[team=!solo]

execute at @s if score #border_end border matches 16 in overworld run spreadplayers ~ ~ 0 7 false @a[team=solo]
execute at @s if score #border_end border matches 48 in overworld run spreadplayers ~ ~ 0 23 false @a[team=solo]
execute at @s if score #border_end border matches 80 in overworld run spreadplayers ~ ~ 0 39 false @a[team=solo]
execute at @s if score #border_end border matches 112 in overworld run spreadplayers ~ ~ 0 55 false @a[team=solo]

execute at @s if score #border_end border matches 16 in overworld run worldborder set 16
execute at @s if score #border_end border matches 48 in overworld run worldborder set 48
execute at @s if score #border_end border matches 80 in overworld run worldborder set 80
execute at @s if score #border_end border matches 112 in overworld run worldborder set 112

effect give @a resistance 3 9 true