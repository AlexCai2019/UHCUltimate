#########################################################
# UHC Project 
# Name    : spread.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute in schedule
# func    : Select betrayers.
#########################################################

execute at @e[tag=bty_set] run spreadplayers ~ ~ 0 124 true @a[team=betrayer]

kill @e[tag=bty_set]