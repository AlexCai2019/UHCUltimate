
#競技場 & 決戰房間 & 同一時間傳送
execute if score 00000000-0000-0000-0000-00000000000a border matches 2 if score 00000000-0000-0000-0000-000000000001 room matches 1 if score #border_start border = 00000000-0000-0000-0000-000000000001 room_time run return run function uhc:start_countdown/check_violation/tp_time_violation

#隨機縮圈 > 1008
execute if score 00000000-0000-0000-0000-000000000009 border matches 2 if score #map_size border matches 1009.. run return run function uhc:start_countdown/check_violation/map_size_not_match

#隨機縮圈 & 決戰房間
execute if score 00000000-0000-0000-0000-000000000009 border matches 2 if score 00000000-0000-0000-0000-000000000001 room matches 1 run return run function uhc:start_countdown/check_violation/br_room_violation

#背叛者傳送 > 第二階段隨機縮圈
execute if score 00000000-0000-0000-0000-000000000009 border matches 2 if score 00000000-0000-0000-0000-000000000001 betray matches 1 if score #temp_border_start border <= #temp_betray_tp betray run return run function uhc:start_countdown/check_violation/betray_br_violation_1

#背叛者傳送 > 漸縮
execute if score 00000000-0000-0000-0000-000000000008 border matches 2 if score 00000000-0000-0000-0000-000000000001 betray matches 1 if score #temp_border_start border < #betray_time betray run return run function uhc:start_countdown/check_violation/betray_br_violation_0

return fail