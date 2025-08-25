#########################################################
# UHC Project 
# Name    : map_size.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust map_size.
#########################################################

# -256 or +256
execute if score @s book matches 8 run scoreboard players remove #map_size border 256
execute if score @s book matches 9 run scoreboard players add #map_size border 256

#make map_size be 496 752 1008 1264 1520
execute if score #map_size border matches 1600.. run scoreboard players set #map_size border 496
execute if score #map_size border matches ..400 run scoreboard players set #map_size border 1520

#worldborder
execute if score #map_size border matches 496 run worldborder set 496
execute if score #map_size border matches 752 run worldborder set 752
execute if score #map_size border matches 1008 run worldborder set 1008
execute if score #map_size border matches 1264 run worldborder set 1264
execute if score #map_size border matches 1520 run worldborder set 1520

#width_chunk number
execute if score #map_size border matches 496 run scoreboard players set #width_chunk border 15
execute if score #map_size border matches 752 run scoreboard players set #width_chunk border 31
execute if score #map_size border matches 1008 run scoreboard players set #width_chunk border 47
execute if score #map_size border matches 1264 run scoreboard players set #width_chunk border 63
execute if score #map_size border matches 1520 run scoreboard players set #width_chunk border 79
scoreboard players operation #inv_width_chunk border = #width_chunk border
scoreboard players operation #inv_width_chunk border *= #-1 constant

tellraw @a ["", {text: "UHCU >>> ", color: "gray"}, {text: "設定", color: "aqua"}, " | ", {text: "地圖大小", color: "gold"}, " | ", {score: {name: "#map_size", objective: "border"}, color: "yellow", extra: ["格"]}]