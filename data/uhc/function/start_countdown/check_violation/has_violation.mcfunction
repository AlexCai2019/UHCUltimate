

#setting check
execute if score 00000000-0000-0000-0000-000000000006 border_mode matches 1 as 0-0-0-0-1 if entity @s[scores={border_on=1, room=1}] if score #border_start border = @s room_time run return run function uhc:start_countdown/check_violation/tp_time_violation
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 1 as 0-0-0-0-1 if entity @s[scores={border_on=1}] if score #map_size border matches 1009.. run return run function uhc:start_countdown/check_violation/map_size_not_match
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 1 as 0-0-0-0-1 if entity @s[scores={border_on=1, room=1}] run return run function uhc:start_countdown/check_violation/br_room_violation
execute as 0-0-0-0-1 if score @s betray matches 1 if score #betray_tp betray <= #betray_time betray run return run function uhc:start_countdown/check_violation/betray_time_violation

scoreboard players operation #temp_betray_tp betray = #betray_tp betray
scoreboard players add #temp_betray_tp betray 3
scoreboard players operation #temp_border_start border = #border_start border
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_cool_time
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_cool_time
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_shrink_time
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_shrink_time
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 1 as 0-0-0-0-1 if entity @s[scores={border_on=1, betray=1}] if score #temp_border_start border <= #temp_betray_tp betray run return run function uhc:start_countdown/check_violation/betray_br_violation_1
execute if score 00000000-0000-0000-0000-000000000008 border_mode matches 0 as 0-0-0-0-1 if entity @s[scores={border_on=1, betray=1}] if score temp_border_start border < #betray_time betray run return run function uhc:start_countdown/check_violation/betray_br_violation_0

#沒有衝突
return fail