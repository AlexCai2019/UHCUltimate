#########################################################
# UHC Project 
# Name    : tp_4.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen/tp_stage
# Loop    : Yes. While reading map.
# func    : tp players +X direction
#########################################################

execute at @s if score #x_chunk border < #corner border run tp @s ~16 128 ~
execute at @s if score #x_chunk border < #corner border run scoreboard players add #x_chunk border 1
execute at @s if score #x_chunk border = #corner border run scoreboard players set #read_map_state border 1