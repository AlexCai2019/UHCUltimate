#########################################################
# UHC Project 
# Name    : map_init.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen
# Loop    : No.
# func    : Teleport player to the first two chunks.
#########################################################

tellraw @a [{text: "UHCU >>> ", color: "gray"}, {text: "開始讀取地圖...", color: "gold"}]

bossbar set uhc:read_progress visible true
execute store result bossbar uhc:read_progress max run scoreboard players get #width_chunk border
bossbar set uhc:read_progress value 0
bossbar set uhc:read_progress players @a

execute as @a[tag=read_map, predicate=uhc:riding] run ride @s dismount
execute at @s run tp @p[tag=read_map] ~ 128 ~
execute as @p[tag=read_map] at @s run tp @s ~16 128 ~
scoreboard players add #x_chunk border 1