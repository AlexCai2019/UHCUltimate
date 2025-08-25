#########################################################
# UHC Project 
# Name    : betray_br_violation_1.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

tellraw @a[gamemode=creative] ["", {text: "UHCU >>> ", color: "gray"}, {text: "ERROR!", color: "dark_red"}, " | ", {text: "背叛者傳送時間需早於隨機縮圈第二階段!!", color: "gold"}]

setblock ~ ~ ~ air