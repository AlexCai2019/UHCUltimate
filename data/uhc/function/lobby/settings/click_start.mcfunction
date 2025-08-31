
#cancel
execute if score #is_starting state matches 1 run return run function uhc:start_countdown/cancel

tp @e[type=#uhc:hostile_normal] ~ -999 ~
execute as @a at @s run playsound minecraft:block.tripwire.attach block @s ~ ~ ~
scoreboard players set #is_starting state 1

execute at @e[type=armor_stand, tag=lottery] run setblock ~ ~1 ~ air