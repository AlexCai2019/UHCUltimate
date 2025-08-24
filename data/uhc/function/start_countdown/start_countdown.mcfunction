#########################################################
# UHC Project 
# Name    : start_countdown.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : Yes. Execute as tag=main
# func    : Prepare to start.
#########################################################

execute if predicate {condition: "entity_properties", entity: "this", predicate: {periodic_tick: 20}} run function uhc:start_countdown/second

execute if score @s timer_sec matches 1 if score @s slow_fall matches 0 run effect give @a levitation 1 60 true
execute if score @s timer_sec matches 1 if score @s slow_fall matches 0 as @a at @s run playsound minecraft:entity.firework_rocket.launch block @s ~ ~ ~ 0.75 0.2
execute if score @s timer_sec matches ..0 run function uhc:go
execute if score @s timer_sec matches ..0 run setblock ~ ~ ~ air