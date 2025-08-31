
#cancel
execute store success score #is_starting state run schedule clear uhc:start_countdown/second
execute if score #is_starting state matches 1 run return run function uhc:start_countdown/cancel


tag @a remove gold_head_normal
execute at @e[type=armor_stand, tag=lottery] run setblock ~ ~1 ~ air
execute as @a run ride @s dismount