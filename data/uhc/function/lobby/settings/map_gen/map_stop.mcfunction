#########################################################
# UHC Project 
# Name    : map_stop.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen
# Loop    : No.
# func    : End pre_reading map process.
#########################################################

tellraw @a [{text: "UHCU >>> ", color: "gray"}, {text: "地圖讀取完畢!!", color: "gold"}]

scoreboard players set #x_chunk border 0
scoreboard players set #z_chunk border 0
scoreboard players set #corner border 1
scoreboard players set #inv_corner border -1
scoreboard players set #read_map_state border 0

tp @a[tag=read_map] 00000000-0000-0000-0000-000000000001
tag @a[tag=read_map] remove read_map

bossbar set uhc:read_progress visible false

execute at @e[type=marker, tag=sub2] run setblock ~ ~ ~ air replace