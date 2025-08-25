#########################################################
# UHC Project 
# Name    : read_map.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : Yes. While reading map.
# func    : Timing and teleport the player per 5 ticks
#########################################################

#initial
execute if score #read_map_state border matches 0 run function uhc:lobby/settings/map_gen/map_init

#timer
execute as @a[tag=read_map] at @s run function uhc:lobby/settings/map_gen/map_tp

#progress line
execute store result bossbar uhc:read_progress value run scoreboard players get #corner border

#stop condition
execute if score #x_chunk border > #width_chunk border run return run function uhc:lobby/settings/map_gen/map_stop
execute if score #x_chunk border < #inv_width_chunk border run return run function uhc:lobby/settings/map_gen/map_stop
execute if score #z_chunk border > #width_chunk border run return run function uhc:lobby/settings/map_gen/map_stop
execute if score #z_chunk border < #inv_width_chunk border run return run function uhc:lobby/settings/map_gen/map_stop