#########################################################
# UHC Project 
# Name    : tp_1.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen/tp_stage
# Loop    : Yes. While reading map.
# func    : tp players +Z direction
#########################################################

execute if score #z_chunk border < #corner border run tp @s ~ 128 ~16
execute if score #z_chunk border < #corner border run scoreboard players add #z_chunk border 1
execute if score #z_chunk border = #corner border run scoreboard players set #read_map_state border 2
execute if score #z_chunk border = #corner border run scoreboard players add #corner border 1
