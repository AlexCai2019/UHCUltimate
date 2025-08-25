#########################################################
# UHC Project 
# Name    : map_tp.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen
# Loop    : Yes. While reading map. Per 5 ticks. Called by players(execute as).
# func    : Decide how to teleport the player.
#########################################################

tp @s ~ 128 ~ ~ 90

execute unless predicate {condition: "entity_properties", entity: "this", predicate: {periodic_tick: 5}} run return fail

#state-1, tp +Z direction. next state tp -X direction
execute if score #read_map_state border matches 1 run return run function uhc:lobby/settings/map_gen/tp_stage/tp_1

#state-2, tp -X direction. next state tp -Z direction
execute if score #read_map_state border matches 2 run return run function uhc:lobby/settings/map_gen/tp_stage/tp_2

#state-3, tp -Z direction. next state tp +X direction
execute if score #read_map_state border matches 3 run return run function uhc:lobby/settings/map_gen/tp_stage/tp_3

#state-4, tp +X direction. next state tp +Z direction
execute if score #read_map_state border matches 4 run return run function uhc:lobby/settings/map_gen/tp_stage/tp_4
