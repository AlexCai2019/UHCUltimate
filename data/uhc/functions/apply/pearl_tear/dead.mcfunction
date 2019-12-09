###################################################
# UHC Project 
# Name    : dead.mcfunction 
# Made by : jelly99709 
# Path    : /apply/pearl_tear/
# Loop    : No. Execute as players.
# func    : Handle pearl_tear dead effect.
###################################################

execute if entity @e[team=red] run tag @a[team=red] add pearl_used
execute if entity @e[team=blue] run tag @a[team=blue] add pearl_used
execute if entity @e[team=green] run tag @a[team=green] add pearl_used
execute if entity @e[team=yellow] run tag @a[team=yellow] add pearl_used
execute if entity @e[team=purple] run tag @a[team=purple] add pearl_used
execute if entity @e[team=gray] run tag @a[team=gray] add pearl_used
execute if entity @e[team=red_dark] run tag @a[team=red_dark] add pearl_used
execute if entity @e[team=blue_dark] run tag @a[team=blue_dark] add pearl_used
execute if entity @e[team=green_dark] run tag @a[team=green_dark] add pearl_used
execute if entity @e[team=gold] run tag @a[team=gold] add pearl_used
execute if entity @e[team=pink] run tag @a[team=pink] add pearl_used
execute if entity @e[team=gray_dark] run tag @a[team=gray_dark] add pearl_used
execute if entity @e[team=aqua] run tag @a[team=aqua] add pearl_used
execute if entity @e[team=aqua_dark] run tag @a[team=aqua_dark] add pearl_used

execute if entity @e[team=red] run effect give @a[team=red] minecraft:regeneration 2 3 true
execute if entity @e[team=blue] run effect give @a[team=blue] minecraft:regeneration 2 3 true
execute if entity @e[team=green] run effect give @a[team=green] minecraft:regeneration 2 3 true
execute if entity @e[team=yellow] run effect give @a[team=yellow] minecraft:regeneration 2 3 true
execute if entity @e[team=purple] run effect give @a[team=purple] minecraft:regeneration 2 3 true
execute if entity @e[team=gray] run effect give @a[team=gray] minecraft:regeneration 2 3 true
execute if entity @e[team=red_dark] run effect give @a[team=red_dark] minecraft:regeneration 2 3 true
execute if entity @e[team=blue_dark] run effect give @a[team=blue_dark] minecraft:regeneration 2 3 true
execute if entity @e[team=green_dark] run effect give @a[team=green_dark] minecraft:regeneration 2 3 true
execute if entity @e[team=gold] run effect give @a[team=gold] minecraft:regeneration 2 3 true
execute if entity @e[team=pink] run effect give @a[team=pink] minecraft:regeneration 2 3 true
execute if entity @e[team=gray_dark] run effect give @a[team=gray_dark] minecraft:regeneration 2 3 true
execute if entity @e[team=aqua] run effect give @a[team=aqua] minecraft:regeneration 2 3 true
execute if entity @e[team=aqua_dark] run effect give @a[team=aqua_dark] minecraft:regeneration 2 3 true

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"selector":"@s"},{"text":"使用","color":"white"},{"text":"珍珠之淚","color":"aqua","Italic":true}]}