###################################################
# UHC Project 
# Name    : pearl_detect.mcfunction 
# Made by : jelly99709 
# Path    : /apply/pearl_tear/
# Loop    : Yes. Execute as @e[tag=main].
# func    : Detect pearl_tear craft, own
###################################################

#craft
execute as @a[scores={pearl_craft=1..}] run function uhc:apply/pearl_craft

#own
execute as @s store result score @s pearl_own run clear @s heart_of_the_sea{Enchantments:[{id:"minecraft:vanishing_curse"}]} 0