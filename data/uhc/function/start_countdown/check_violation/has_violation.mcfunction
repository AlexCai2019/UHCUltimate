

#setting check
execute if score 00000000-0000-0000-0000-000000000006 border_mode matches 1 as 0-0-0-0-1 if entity @s[scores={border_on=1, room=1}] if score #border_start border = @s[scores={room=1}] room_time run return run function uhc:start_countdown/check_violation/tp_time_violation
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 1 as 0-0-0-0-1 if entity @s[scores={border_on=1}] if score #map_size border matches 1009.. run return run function uhc:start_countdown/check_violation/map_size_not_match
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 1 as 0-0-0-0-1 if entity @s[scores={border_on=1, room=1}] run return run function uhc:start_countdown/check_violation/br_room_violation
execute if score @s betray matches 1 if score @s betray_tp <= @s betray_time run return run function uhc:start_countdown/check_violation/betray_time_violation

scoreboard players operation #temp betray_tp = @s betray_tp
scoreboard players add #temp betray_tp 3
scoreboard players operation #temp_border_start border = #border_start border
scoreboard players operation #temp_border_start border += @s BR_cool_time
scoreboard players operation #temp_border_start border += @s BR_cool_time
scoreboard players operation #temp_border_start border += @s BR_shrink_time
scoreboard players operation #temp_border_start border += @s BR_shrink_time
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 1 if entity @s[scores={border_on=1, betray=1}] if score #temp_border_start border <= #temp betray_tp run return run function uhc:start_countdown/check_violation/betray_br_violation_1
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 0 if entity @s[scores={border_on=1, betray=1}] if score temp_border_start border < @s betray_time run return run function uhc:start_countdown/check_violation/betray_br_violation_0