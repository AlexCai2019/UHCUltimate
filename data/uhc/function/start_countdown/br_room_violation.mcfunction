#########################################################
# UHC Project 
# Name    : br_room_violation.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

tellraw @a[gamemode=creative] ["", {text: "UHCU >>> ", color: "gray"}, {text: "ERROR!", color: "dark_red"}, " | ", {text: "請勿同時開啟隨機縮圈模式與決戰房間!!", color: "gold"}]

setblock ~ ~ ~ air replace