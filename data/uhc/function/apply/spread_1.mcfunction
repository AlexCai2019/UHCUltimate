###################################################
# UHC Project 
# Name    : spread_1.mcfunction 
# Made by : jelly99709 
# Path    : /apply/
# Loop    : No. Called by uhc:go
# func    : To spread players.
###################################################

execute at @s if score #map_size border matches 496 run spreadplayers ~ ~ 64 232 true @a[team=!solo, team=!spec]
execute at @s if score #map_size border matches 752 run spreadplayers ~ ~ 64 360 true @a[team=!solo, team=!spec]
execute at @s if score #map_size border matches 1008 run spreadplayers ~ ~ 64 488 true @a[team=!solo, team=!spec]
execute at @s if score #map_size border matches 1264 run spreadplayers ~ ~ 64 616 true @a[team=!solo, team=!spec]
execute at @s if score #map_size border matches 1520 run spreadplayers ~ ~ 64 744 true @a[team=!solo, team=!spec]

execute at @s if score #map_size border matches 496 run spreadplayers ~ ~ 64 232 false @a[team=solo]
execute at @s if score #map_size border matches 752 run spreadplayers ~ ~ 64 360 false @a[team=solo]
execute at @s if score #map_size border matches 1008 run spreadplayers ~ ~ 64 488 false @a[team=solo]
execute at @s if score #map_size border matches 1264 run spreadplayers ~ ~ 64 616 false @a[team=solo]
execute at @s if score #map_size border matches 1520 run spreadplayers ~ ~ 64 744 false @a[team=solo]