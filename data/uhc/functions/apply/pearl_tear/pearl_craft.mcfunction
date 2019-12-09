###################################################
# UHC Project 
# Name    : pearl_craft.mcfunction 
# Made by : jelly99709 
# Path    : /apply/pearl_tear/
# Loop    : No. Execute as players.
# func    : Handle pearl_tear craft.
###################################################

#execute if entity @e[team=red] run tag @a[team=red] add pearl_craft
#execute if entity @e[team=blue] run tag @a[team=blue] add pearl_craft
#execute if entity @e[team=green] run tag @a[team=green] add pearl_craft
#execute if entity @e[team=yellow] run tag @a[team=yellow] add pearl_craft
#execute if entity @e[team=purple] run tag @a[team=purple] add pearl_craft
#execute if entity @e[team=gray] run tag @a[team=gray] add pearl_craft
#execute if entity @e[team=red_dark] run tag @a[team=red_dark] add pearl_craft
#execute if entity @e[team=blue_dark] run tag @a[team=blue_dark] add pearl_craft
#execute if entity @e[team=green_dark] run tag @a[team=green_dark] add pearl_craft
#execute if entity @e[team=gold] run tag @a[team=gold] add pearl_craft
#execute if entity @e[team=pink] run tag @a[team=pink] add pearl_craft
#execute if entity @e[team=gray_dark] run tag @a[team=gray_dark] add pearl_craft
#execute if entity @e[team=aqua] run tag @a[team=aqua] add pearl_craft
#execute if entity @e[team=aqua_dark] run tag @a[team=aqua_dark] add pearl_craft

execute if entity @e[team=red] run recipe take @a[team=red] uhc:pearl_tear
execute if entity @e[team=blue] run recipe take @a[team=blue] uhc:pearl_tear
execute if entity @e[team=green] run recipe take @a[team=green] uhc:pearl_tear
execute if entity @e[team=yellow] run recipe take @a[team=yellow] uhc:pearl_tear
execute if entity @e[team=purple] run recipe take @a[team=purple] uhc:pearl_tear
execute if entity @e[team=gray] run recipe take @a[team=gray] uhc:pearl_tear
execute if entity @e[team=red_dark] run recipe take @a[team=red_dark] uhc:pearl_tear
execute if entity @e[team=blue_dark] run recipe take @a[team=blue_dark] uhc:pearl_tear
execute if entity @e[team=green_dark] run recipe take @a[team=green_dark] uhc:pearl_tear
execute if entity @e[team=gold] run recipe take @a[team=gold] uhc:pearl_tear
execute if entity @e[team=pink] run recipe take @a[team=pink] uhc:pearl_tear
execute if entity @e[team=gray_dark] run recipe take @a[team=gray_dark] uhc:pearl_tear
execute if entity @e[team=aqua] run recipe take @a[team=aqua] uhc:pearl_tear
execute if entity @e[team=aqua_dark] run recipe take @a[team=aqua_dark] uhc:pearl_tear

clear @s heart_of_the_sea
give @s heart_of_the_sea{display:{Name:"{\"text\":\"珍珠之淚\",\"color\":\"purrle\",\"Italic\":true}"},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}