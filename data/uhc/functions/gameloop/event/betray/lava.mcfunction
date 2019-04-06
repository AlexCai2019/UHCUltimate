#########################################################
# UHC Project 
# Name    : lava.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute as @e[tag=main].
# func    : Remove lava from loyalty.
#########################################################

execute at @a[tag=!betrayer] if block ~ ~1 ~ lava run setblock ~ ~1 ~ water
execute at @a[tag=!betrayer] if block ~ ~ ~ lava run setblock ~ ~ ~ water

scoreboard players set @a lava 0