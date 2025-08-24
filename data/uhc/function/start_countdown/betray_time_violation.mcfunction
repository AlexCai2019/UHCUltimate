#########################################################
# UHC Project 
# Name    : betray_time_violation.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

tellraw @a[gamemode=creative] ["", {text: "UHCE >>> ", color: "gray"}, {text: "ERROR!", color: "dark_red"}, " | ", {text: "公佈背叛者時間需大於選定背叛者時間!!", color: "gold"}]

setblock ~ ~ ~ air