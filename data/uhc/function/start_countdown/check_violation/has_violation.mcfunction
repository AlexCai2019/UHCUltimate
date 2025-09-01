

#setting check

execute if score 00000000-0000-0000-0000-000000000001 betray matches 1 if score #betray_tp betray <= #betray_time betray run return run function uhc:start_countdown/check_violation/betray_time_violation

scoreboard players operation #temp_betray_tp betray = #betray_tp betray
scoreboard players add #temp_betray_tp betray 3
scoreboard players operation #temp_border_start border = #border_start border
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_cool_time
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_cool_time
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_shrink_time
scoreboard players operation #temp_border_start border += 00000000-0000-0000-0000-000000000001 BR_shrink_time

execute if score 00000000-0000-0000-0000-000000000001 border matches 1 if function uhc:start_countdown/check_violation/about_border run return 100

#沒有衝突
return fail