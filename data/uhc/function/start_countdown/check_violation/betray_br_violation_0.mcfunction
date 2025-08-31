#########################################################
# UHC Project 
# Name    : betray_br_violation_0.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/check_violation/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

tellraw @a[gamemode=creative] ["", {text: "UHCU >>> ", color: "gray"}, {text: "ERROR!", color: "dark_red"}, " | ", {text: "背叛者傳送時間需早於邊界漸縮啟動時間!!", color: "gold"}]
return 100