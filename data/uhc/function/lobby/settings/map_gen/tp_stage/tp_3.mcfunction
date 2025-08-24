#########################################################
# UHC Project 
# Name    : tp_3.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen/tp_stage
# Loop    : Yes. While reading map.
# func    : tp players -Z direction
#########################################################

execute at @s if score #z_chunk border > #inv_corner border run tp @s ~ 128 ~-16
execute at @s if score #z_chunk border > #inv_corner border run scoreboard players remove #z_chunk border 1
execute at @s if score #z_chunk border = #inv_corner border run scoreboard players set #read_map_state border 4
execute at @s if score #z_chunk border = #inv_corner border run scoreboard players remove #inv_corner border 1
