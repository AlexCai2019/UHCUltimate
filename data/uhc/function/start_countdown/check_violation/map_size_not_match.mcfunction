#########################################################
# UHC Project 
# Name    : map_size_not_match.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/check_violation/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

tellraw @a[gamemode=creative] ["", {text: "UHCU >>> ", color: "gray"}, {text: "ERROR!", color: "dark_red"}, " | ", {text: "若要開啟隨機縮圈模式，地圖大小至多為1008格!!", color: "gold"}]
return 100